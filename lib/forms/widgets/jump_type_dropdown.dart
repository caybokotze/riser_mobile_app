import 'package:flutter/material.dart';

class JumpTypeDropDown extends StatefulWidget {
  @override
  _JumpTypeDropDownState createState() => _JumpTypeDropDownState();
}

class _JumpTypeDropDownState extends State<JumpTypeDropDown> {

  int _currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    //Note: Modal?
    return AlertDialog(
      backgroundColor: Color(0XFFF2F4F7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      contentPadding: EdgeInsets.fromLTRB(8, 5, 5, 5),
      content: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(left: 2.0, bottom: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  children: <Widget>[
                    ListTile(
                      onTap: (){
                        setState(() {
                          _currentSelected = 0;
                          //Todo: What does this mean?
                          Navigator.pop(context);
                        });
                      },
                      title: Text("fun jump"),
                    ),
                    ListTile(
                      onTap: (){
                        setState(() {
                          _currentSelected = 0;
                          //Todo: What does this mean?
                          Navigator.pop(context);
                        });
                      },
                      title: Text("less fun jump"),
                    ),
                    ListTile(
                      onTap: (){
                        setState(() {
                          _currentSelected = 0;
                          //Todo: What does this mean?
                          Navigator.pop(context);
                        });
                      },
                      title: Text("way not a fun jump"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
