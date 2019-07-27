import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 25.0, bottom: 20.0, right: 16.0),
                child: Hero(
                  tag: "ProfileTag",
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(20.0),
                        border: new Border.all(color: Colors.grey[300])),
                    constraints: BoxConstraints(
                        maxHeight: 50.0,
                        maxWidth: 65.0,
                        minWidth: 65.0,
                        minHeight: 50.0),
                    child: Icon(
                      Icons.scatter_plot,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              )
            ],
          ),

          //write a checklist
        ],
      ),
    );
  }
}
