import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

class SelectAircraft extends StatefulWidget {
  @override
  _SelectAircraftState createState() => _SelectAircraftState();
}

class _SelectAircraftState extends State<SelectAircraft> {

  Map<String, dynamic> formData = {
    'Dz': '',
    'Aircraft': '',
  };

  List<String> dz = [
    'Skydive Mossel Bay',
    'Skydive Robertson',
    'Skydive Rustenberg',
    'JSC',
    'Skydive Mother City',
  ];

  List<String> aircraft = [
    'Cessna 206',
    'Atlas Angel',
    'PAC 750',
    'Cessna 182',
  ];



  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(left: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                "Aircraft :  ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Text(
            //   ":  ",
            //   maxLines: 1,
            //   overflow: TextOverflow.ellipsis,
            //   style: TextStyle(
            //       fontSize: 15,
            //       fontFamily: 'Roboto',
            //       color: Colors.black87,
            //       fontWeight: FontWeight.bold),
            // ),
            Expanded(
              child: Container(
                child: DropDownField(
                    value: formData['Aircraft'],
                    //icon: Icon(Icons.location_city),
                    required: false,
                    hintText: 'Select',
                    hintStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    //labelText: 'dz',
                    items: aircraft,
                    strict: true,
                    itemsVisibleInDropdown: 4,
                    setter: (dynamic newValue) {
                      setState(() {
                        formData['Aircraft'] = newValue;
                        print(newValue);
                      });
                    }),
              ),
            ),
          ],
        ),
      );
  }
}
