import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd').format(now);


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
                padding: EdgeInsets.only(
                    left: 25.0, top: 15.0, bottom: 20.0, right: 16.0),
                child: Hero(
                  tag: "TodayTag",
                   child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(15.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 15.0,
                        offset: new Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  constraints: BoxConstraints(
                      maxHeight: 50.0,
                        maxWidth: 65.0,
                        minWidth: 65.0,
                        minHeight: 50.0),
                  child: Center(
                     child: Text(
                    formattedDate + "th",
                    style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      fontSize: 20.0, 
                      fontFamily: "Quicksand"
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ),
                ),
              ),
                    
                ),
              ),

              Text(
                "Today",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            
              

            ],
          ),

          //write a checklist

        ],
      ),
    );
  }
}
