import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  Color appColor = Color((0XFF00B8F0));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: appColor.withOpacity(0.7),
          child: Container(
            // color: Colors.yellow,
            // padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  // height: 50,
                  // margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.fromLTRB(60, 30, 60, 20),
                  child: Image.asset('assets/img/RISErText.png',
                    height: 45,),
                ),
                Text(
                  'Citizen of the Cosmos.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 13,
                      height: 1.2,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Welcome to a New Era of BodyFlight.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 13,
                      height: 1.4,
                      //fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'RISE & FLY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12.5,
                      height: 1.5,
                      //fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    //color: Colors.red,
                    //height: 200,
                    // margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    child: Image.asset('assets/img/atRISErLogbook.png',
                    ),
                  ),
                ),
                /////////////////  Log In Button Start  ///////////////
                Container(
                  // margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                    margin: EdgeInsets.only(bottom: 60),
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.white)
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Get Started With Us',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Color(0XFF75CBFE),
                          fontSize: 14.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0XFFFFFFFF),
                      elevation: 2.0,
                    )),
                ///////////////// Log In Button  End///////////////
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: appColor.withOpacity(0.7),
          elevation: 0.0,
          child: Container(
            padding: EdgeInsets.only(bottom: 10, left: 4, right: 4),
            child: Text(
              'By continuing, you argee to our Terms of Service and Privacy Policy.', //The Digital Logbook Revolution. Skydiving | Tunnel | B.A.S.E.
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.5,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
