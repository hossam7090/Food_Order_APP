import 'package:flutter/material.dart';


void main() {
  runApp( const MaterialApp(
    home: Home(),
  ));
}


class Home extends StatelessWidget {
   const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To Our Food Order App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: const <Widget>[
          Image(
            image: NetworkImage(
              "https://yt3.ggpht.com/ytc/AKedOLSTP4cPU2cs1Zg-hxYggqMMUEJfT82A6atYmuKNzw=s900-c-k-c0x00ffffff-no-rj",
            ),
            width:80.0 ,
            height:80.0,
          ),
          Image(
            image: NetworkImage(
              "https://e7.pngegg.com/pngimages/1002/138/png-clipart-burger-king-logo-hamburger-burger-king-logo-restaurant-burger-king-text-fast-food-restaurant-thumbnail.png",
            ),
            width:80.0 ,
            height:80.0,
          ),
          Image(
            image: NetworkImage(
              "https://e7.pngegg.com/pngimages/870/682/png-clipart-domino-s-pizza-logo-domino-s-pizza-pizza-delivery-logo-pizza-domino-s-pizza-pizza-pizza-thumbnail.png",
            ),
            width:80.0 ,
            height:80.0,
          ),
          Image(
            image: NetworkImage(
              "https://e7.pngegg.com/pngimages/651/153/png-clipart-kfc-logo-kfc-logo-icons-logos-emojis-iconic-brands-thumbnail.png",
            ),
            width:80.0 ,
            height:80.0,
          ),
          Image(
            image: NetworkImage(
              "https://e7.pngegg.com/pngimages/768/671/png-clipart-dunkin-donuts-logo-dunkin-donuts-logo-icons-logos-emojis-iconic-brands-thumbnail.png",
            ),
            width:80.0 ,
            height:80.0,
          ),



        ]

      ),


      );





  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




