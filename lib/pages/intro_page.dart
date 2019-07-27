import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        IntroOne(), 
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}

class IntroOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int delayAmount = 500;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(36.0, 60.0, 0.0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                 ShowUp(
              child: Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child:  Text("Hello,",
                    style: TextStyle(
                      fontSize: 31.0,
                      color: Colors.black,
                    )),
                ),
              delay: delayAmount,
            ),

            ShowUp(
              child:  Padding(
                 padding: EdgeInsets.only(bottom: 32.0),
                 child: Text("Welcome to Arlo, a simple gratitude tracker.",
                    style: TextStyle(
                        fontSize: 32.0,
                        //fontFamily: "Montserrat",
                        color: Colors.black,
                        )),
              ),
              delay: delayAmount * 3,
            ),

             ShowUp(
              child:  Padding(
                 padding: EdgeInsets.only(bottom: 32.0),
                 child: Text("Spend a few minutes everyday to reflect on the good that we encountered today.",
                    style: TextStyle(
                        fontSize: 32.0,
                        //fontFamily: "Montserrat",
                        color: Colors.black,
                        )),
              ),
              delay: delayAmount * 6,
            ),

            ShowUp(
              child:  Padding(
                 padding: EdgeInsets.only(bottom: 32.0),
                 child: Text("Life can be hard sometimes, but it's important to remember the positives too.",
                    style: TextStyle(
                        fontSize: 32.0,
                        //fontFamily: "Montserrat",
                        color: Colors.black,
                        )),
              ),
              delay: delayAmount * 9,
            ),

            ShowUp(
              child:  Padding(
                 padding: EdgeInsets.only(bottom: 32.0),
                 child: Text("Begin by clicking below.",
                    style: TextStyle(
                        fontSize: 32.0,
                        //fontFamily: "Montserrat",
                        color: Colors.black,
                        )),
              ),
              delay: delayAmount * 9,
            ),
               
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//fade up animation 
class ShowUp extends StatefulWidget {
  final Widget child;
  final int delay;

  ShowUp({@required this.child, this.delay});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  AnimationController _animController;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _animController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _animController,
    );
  }
}