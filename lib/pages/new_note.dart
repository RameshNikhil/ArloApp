import 'package:flutter/material.dart';

class NewNote extends StatelessWidget {
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
                padding: EdgeInsets.only(
                    left: 25.0, top: 15.0, bottom: 20.0, right: 16.0),
                child: Hero(
                  tag: "NewNoteTag",
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffd3e9),
                      borderRadius: new BorderRadius.circular(19.0),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffffd3e9).withOpacity(0.4),
                          blurRadius: 20.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                    constraints: BoxConstraints(
                        maxHeight: 50.0,
                        maxWidth: 65.0,
                        minWidth: 65.0,
                        minHeight: 50.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              Text(
                "Quick Checklist",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),

          //write a checklist

          Container(
            child: Padding(
              child: Row(
              children: <Widget>[
                Text("this is a note"), //TAG
              ],
            ),
            padding: EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
            )
          ),
          Center(
            child: GestureDetector(
            child: Card(
              child: Text("+"),
              color: Colors.red.withOpacity(0.6),  
            ),
            onTap: (){
              //create new text in the "TAG" above
            },
          )
          ),
          
          
        ],
      ),
    );
  }
}
