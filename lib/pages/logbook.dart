import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class LogBook extends StatefulWidget {
  @override
  _LogBookState createState() => _LogBookState();
}

class _LogBookState extends State<LogBook> {
  int i = 5;
  ScrollController _hideButtonController;
  var _isVisible = true;

  @override
  void initState() {
    super.initState();

    _hideButtonController = ScrollController();

    _isVisible = true;
    _hideButtonController = new ScrollController();

    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible == true) {
          /* only set when the previous state is false
             * Less widget rebuilds
             */
          //Move IO away from setState
          setState(() {
            _isVisible = true;
          });
        }
      } else {
        if (_hideButtonController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (_isVisible == false) {
            /* only set when the previous state is false
               * Less widget rebuilds
               */
            //Move IO away from setState
            setState(() {
              _isVisible = true;
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: i,
        controller: _hideButtonController,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              //dialog values start
              //Note: Push press on logbook list item.
              Navigator.pushReplacementNamed(context, '');


            },
            child: Card(
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "390",
                            style:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "1/111996",
                            style:
                            TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Fun Jump",
                            style:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Freefly",
                            style:
                            TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "C1896",
                            style: TextStyle(color: Colors.red, fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Skydive Mossel Bay",
                            style:
                            TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),


      floatingActionButton: new Visibility(
        visible: _isVisible,
        child: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          animatedIconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          overlayColor: Colors.white,
          overlayOpacity: 0.9,
          closeManually: false,
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 28,
              ),
              label: "ADD SKYDIVE",
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              backgroundColor: Colors.blue,
              onTap: () {
                //Note: Add skydive button. Direct to Create Skydive Page.
                Navigator.pushReplacementNamed(context, '/addSkydive');
              },
            ),
            SpeedDialChild(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 28,
                ),
                label: "ADD TUNNEL",
                labelStyle:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                onTap: () {
                  //Note: Add tunnel button.
                  Navigator.pushReplacementNamed(context, '/addTunnel');
                }),
            SpeedDialChild(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 28,
                ),
                label: "ADD B.A.S.E JUMP",
                labelStyle:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                onTap: () {
                  //Note: Add base jump directive.
                  Navigator.pushReplacementNamed(context, '/addBase');
                }),
          ],
        ),
      ),
    );
  }

}
