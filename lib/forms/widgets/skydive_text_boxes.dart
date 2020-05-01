import 'package:flutter/material.dart';

class SkydiveTextBoxes extends StatefulWidget {
  @override
  _SkydiveTextBoxesState createState() => _SkydiveTextBoxesState();
}

class _SkydiveTextBoxesState extends State<SkydiveTextBoxes> {

  TextEditingController exitAltitudeController = TextEditingController();
  TextEditingController deploymentController = TextEditingController();
  TextEditingController freeFallTimeController = TextEditingController();
  TextEditingController freeFallMaxSpeedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Container(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          children: <Widget>[
            //Note: Commented this out today 2020
            //altitudeContainer("Exit Altitude", exitAltitudeController),
          ],
        ),
      ),
    );
  }

  Container altitudeContainer()
}
