import 'package:Arlo/pages/new_note.dart';
import 'package:Arlo/pages/profile.dart';
import 'package:Arlo/routing/fade_transition.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BigButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[

        Hero(
          tag: "NewNoteTag",
          child:  Padding(
          padding: EdgeInsets.only(top: 25.0, bottom: 20.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, FadeRouteBuilder(page: NewNote()));
            },

            child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffd3e9),
                    borderRadius: new BorderRadius.circular(20.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xffffd3e9).withOpacity(0.4),
                        blurRadius: 20.0,
                        offset: new Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  constraints: BoxConstraints(
                      maxHeight: 65.0,
                      maxWidth: 85.0,
                      minWidth: 85.0,
                      minHeight: 65.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),

          ),
        ),
        ),


        Hero(
          tag: "ProfileTag",
          child: Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25.0, bottom: 20.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, FadeRouteBuilder(page: Profile()));
            },
            child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20.0),
                    border: new Border.all(color: Colors.grey[300])
                  ),
                  constraints: BoxConstraints(
                   maxHeight: 65.0,
                      maxWidth: 85.0,
                      minWidth: 85.0,
                      minHeight: 65.0),
                  child: Icon(
                    Icons.scatter_plot,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
          ),
          
        ),
        ),

        
      
      ],
    );
  }
}