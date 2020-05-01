import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';


class LocationRow extends StatefulWidget {

  @override
  _LocationRowState createState() => _LocationRowState();
}

class _LocationRowState extends State<LocationRow> {

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 2, top: 2),
            child: Image.asset(
              'assets/img/locationIcon.png',
              height: 30,
              // width: 60,
              fit: BoxFit.contain,
            )
          // child: Icon(
          //   Icons.location_on,
          //   size: 15,
          // ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            "DZ :  ",
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
          child: Container(
            //constraints: BoxConstraints.expand(),
            child: DropDownField(
                value: formData['Dz'],
                //icon: Icon(Icons.location_city),
                required: false,
                hintText: 'Select',
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                //labelText: 'dz',
                items: dz,
                strict: true,
                itemsVisibleInDropdown: 3,
                setter: (dynamic newValue) {
                  setState(() {
                    formData['Dz'] = newValue;
                    print(formData[dz]);
                  });
                }),
          ),
        ),
      ],
    );
  }
}
