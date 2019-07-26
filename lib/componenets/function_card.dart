import 'package:Arlo/pages/goals.dart';
import 'package:Arlo/pages/previous.dart';
import 'package:Arlo/pages/today.dart';
import 'package:Arlo/routing/fade_transition.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FunctionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd').format(now);

    return Column(
      children: <Widget>[
        //Unique call 
        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: SingleFunctionX(
            title: "Today",
            detail: "What are you grateful for today?",
            cellDate: formattedDate,
          ),
        ),

        //These 2 are different from the one above
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: SingleFunction(
            iconCase: Icons.date_range,
            title: "Previous",
            detail: "Reflect on the past.",
            pageTag: "PreviousTag",
            page: Previous(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: SingleFunction(
            iconCase: Icons.show_chart,
            //iconCase: Icons.equalizer,
            title: "Goals",
            detail: "See your daily progress.",
            pageTag: "GoalTag",
            page: Goals(),
          ),
        ),
      ],
    );
  }
}

class SingleFunction extends StatelessWidget {
  var iconCase;
  var title;
  var detail;
  var pageTag; 
  var page;

  SingleFunction(
      {@required this.iconCase, @required this.title, @required this.detail, @required this.pageTag, @required this.page});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: pageTag,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, FadeRouteBuilder(page: page));
        },
        child:  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      clipBehavior: Clip.antiAlias,
      child: new Container(
        color: Color(0xfff9f9fc),
        child: new Align(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
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
                      maxHeight: 72.0,
                      maxWidth: 90.0,
                      minWidth: 90.0,
                      minHeight: 72.0),
                  child: Icon(
                    iconCase,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      ), 
                      ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Text(
                        detail,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
      ),
    );
    

  }
}


class SingleFunctionX extends StatelessWidget {
  var title;
  var detail; 
  var cellDate;

  SingleFunctionX(
      {@required this.title, @required this.detail, @required this.cellDate});

  @override
  Widget build(BuildContext context) {

    return Hero(
      tag: "TodayTag",
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, FadeRouteBuilder(page: Today()));
        },
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      clipBehavior: Clip.antiAlias,
      child: new Container(
        color: Color(0xfff9f9fc),
        child: new Align(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
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
                      maxHeight: 72.0,
                      maxWidth: 90.0,
                      minWidth: 90.0,
                      minHeight: 72.0),
                  child: Center(
                     child: Text(
                    cellDate + "th",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Text(
                        detail,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
      ),
    );

  }

}
