import 'package:flutter/material.dart';
import 'package:riser_app/forms/widgets/location_row.dart';
import 'package:riser_app/forms/widgets/select_aircraft.dart';
import 'package:riser_app/forms/widgets/select_jump_type.dart';
import 'package:riser_app/forms/widgets/skydive_text_boxes.dart';

class SkydiveForm extends StatefulWidget {
  @override
  _SkydiveFormState createState() => _SkydiveFormState();
}

class _SkydiveFormState extends State<SkydiveForm> {
  TextEditingController commentController = TextEditingController();
  TextEditingController dzController = TextEditingController();
  TextEditingController aircraftController = TextEditingController();

  Color appColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    try {
      try {
        try {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ////////    Calling Widgets   ///////

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  //Note: Add location widget.
                                  LocationRow(),
                                  //Note: Add Aircraft widget.
                                  SelectAircraft(),
                                  //Note: Add Jump Type Widget.
                                  SelectJumpType()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      // _buildtextFieldWidget(),
                      SkydiveTextBoxes(),

                      _buildGearWidget(),

                      _buildParticipentWidget(),

                      _buildMediaWidget(),

                      _buildCommentWidget(),
                    ],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  // Navigator.push(context,
                  //       SlideLeftRoute(page: Tst()));
                }, // _buildFavButtonWidget(),
                backgroundColor: appColor,
                child: Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
        } catch (e, s) {
          print(s);
        }
      } catch (e, s) {
        print(s);
      }
    } catch (e, s) {
      print(s);
    }
    );
  }

/////////////////////////      Gear Container Start    ////////////////////////////////
  _buildGearWidget() {
    return Container(
      padding: EdgeInsets.only(left: 6, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Gear', //"Exit Altitudue",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              //Note: Commented out today.
              //Expanded(child: SkydiveGearSwitch()),
            ],
          )
        ],
      ),
    );
  }
/////////////////////////      Gear Container End    ////////////////////////////////

/////////////////////////      Participent Container Start    ////////////////////////////////
  _buildParticipentWidget() {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Participents', //"Exit Altitudue",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
/////////////////////////     Participent  Container End    ////////////////////////////////

  /////////////////////////      Media Container Start    ////////////////////////////////
  _buildMediaWidget() {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Media',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: appColor,
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: appColor,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  /////////////////////////      Media Container End    ////////////////////////////////

  /////////////////////////      Comment Container Start    ////////////////////////////////
  _buildCommentWidget() {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 15, bottom: 40, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Comment',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 5),
            //decoration: BoxDecoration(color: Colors.red),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    maxLines: 99,
                    scrollPhysics: BouncingScrollPhysics(),
                    style: TextStyle(
                        color: Colors.black54, fontSize: 16, height: 1.5),
                    cursorColor: Color(0xFF9b9b9b),
                    controller: commentController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 10),
                      fillColor: Colors.blueGrey[50],
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
/////////////////////////      Media Container End    ////////////////////////////////
}
