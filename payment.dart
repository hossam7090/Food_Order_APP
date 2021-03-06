
import 'package:cart_pages/cart_screen.dart';
import 'package:flutter/material.dart';

class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CartScreen(),
              ),
            ),
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 30.0,
            )),
        title: Text(
          'Payment',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 35.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Adress',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Container(
                    width: 330,
                    height: 100,
                    child: Row(

                      children: [
                        Container(

                            decoration: BoxDecoration(

                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 70.0,
                            height: 70.0,
                            child: Image.asset('images/map.png')

                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Enter your adress',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.yellow,
                                    fontFamily: 'Ubuntu'),
                              ),
                            )
                          ],
                        )



                      ],
                    ),
                  ),
                ),
                TextFormField(

                  decoration: InputDecoration(
                         border: OutlineInputBorder(
                   borderRadius: const BorderRadius.all(
                         Radius.circular(15.0),
                   ) ),
                      labelText: 'adress',
                      hintStyle: new TextStyle(color: Colors.black),
                        fillColor: Colors.black,
                      prefixIcon: Icon(
                          Icons.location_on_rounded
                      )
                  ),

                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
