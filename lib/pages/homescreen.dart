import 'package:Arlo/componenets/big_buttons.dart';
import 'package:Arlo/componenets/function_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String userName; 
  HomeScreen({@required this.userName}); 

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
            // Adds a blur user profile button on the top right of the page 
            // IconButton(
            //     icon: Icon(
            //       Icons.blur_on,
            //       color: Colors.black,
            //       size: 30.0,
            //     ),
            //     onPressed: () {}),
          
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(36.0, 0.0, 0.0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hello,",
                    style: TextStyle(
                      fontSize: 31.0,
                      color: Colors.black,
                    )),
                Text(userName,  // ? why not widget.username? 
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
