import 'package:Arlo/componenets/big_buttons.dart';
import 'package:Arlo/componenets/function_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // IconButton(
            //     icon: Icon(
            //       Icons.blur_on,
            //       color: Colors.black,
            //       size: 30.0,
            //     ),
            //     onPressed: () {}),
            // Your widgets here
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(36.0, 60.0, 0.0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hello,",
                    style: TextStyle(
                      fontSize: 31.0,
                      color: Colors.black,
                    )),
                Text("Nikhil Ramesh",
                    style: TextStyle(
                        fontSize: 32.0,
                        //fontFamily: "Montserrat",
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),

                BigButtons(),

                Padding(
                  padding: EdgeInsets.only(top: 30.0,),
                  child: Text(
                    "Functions", 
                    style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      color: Colors.grey, 

                    ),),
                ),

                FunctionCard(), 
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
