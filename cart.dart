import 'package:flutter/material.dart';

class CartItem {
  final String id ;
  final int quntity ;
  final String catagori ;
  final String description ;
  final double meal_price ;
  CartItem({
    required this.id,
    required this.quntity,
    required this.catagori,
    required this.description,
    required this.meal_price,
});
}



class Cart extends ChangeNotifier {

  Map <String,CartItem> _items = {};


  Map <String,CartItem> get items  {
    return {..._items};
  }

  int get itemcount{
    return _items.length;
  }
  int  qunt(String id){
    return _items[id]!.quntity ;
  }

  double get totalAmount{
    var total = 0.0 ;
    _items.forEach((key, CartItem) {
      total += CartItem.meal_price * CartItem.quntity ;
    });
    return total;
  }



  void addItem(String id ,double meal_price ,String catagori,String description){
  if(_items.containsKey(id)){
    _items.update(id, (newITem) => CartItem(
        id:newITem.id,
        quntity: newITem.quntity+1,
        catagori: newITem.catagori,
        description: newITem.description,
        meal_price: newITem.meal_price));

  }else{
    _items.putIfAbsent(id, () => CartItem(
        id: DateTime.now().toString(),
        quntity: 1,
        catagori: catagori,
        description: description,
        meal_price: meal_price));
  }
  notifyListeners();
}

  void removeItem(String id){
    _items.remove(id);
    notifyListeners();
  }
  void removeSinglevalue(String id){
    if(!_items.containsKey(id)){
      return;
    }
    if(_items[id]!.quntity > 1 ){
      _items.update(id, (newITem) => CartItem(
          id:newITem.id,
          quntity: newITem.quntity-1,
          catagori: newITem.catagori,
          description: newITem.description,
          meal_price: newITem.meal_price));
    }else{
      _items.remove(id);
    }
  }










}