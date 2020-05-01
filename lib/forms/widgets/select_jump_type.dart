import 'package:flutter/material.dart';
import 'package:riser_app/forms/widgets/jump_type_dropdown.dart';

class SelectJumpType extends StatefulWidget {
  @override
  _SelectJumpTypeState createState() => _SelectJumpTypeState();
}

class _SelectJumpTypeState extends State<SelectJumpType> {

  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "Jump Type :  ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 3, 5, 2),
                      decoration: BoxDecoration(
                        // border: Border. .fromBorderSide(BorderSide(color: Colors.grey))
                        // color: Colors.grey[200],
                        // borderRadius: BorderRadius.all(Radius.circular(1))
                      ),
                      child: GestureDetector(
                          onTap: () {
                            JumpTypeDropDown();
                          },
                          child: (_currentSelected != 0)
                              ? Text(
                            //Todo: Paste the current selected jump type here.
                            "Jump Selected.",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Colors.black54,
                                //height: 1.6,
                                decoration: TextDecoration.underline,
                                // decorationStyle:
                                //     TextDecorationStyle.solid,
                                // decorationColor:
                                //     Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w500),
                          )
                              : Text('Add new Jump Type',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500))),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
