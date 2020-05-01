import 'package:flutter/material.dart';


class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFFFFFFF),
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height / 2) - 100,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    // alignment: Alignment(),
                      image: AssetImage('assets/img/signin2.png'),
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(0.9), BlendMode.overlay),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ////// Logo Start ///////////
                  Container(
                    margin: EdgeInsets.only(top: 60, bottom: 25),
                    width: 140,
                    height: 40,
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage('assets/img/bahrainlogo.png'),
                    //         fit: BoxFit.fill)),
                    child: Text(
                      'RISEr',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF09324B),
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  /////// Logo End ///////////

                  ////////////////////////////////// mIDDLE Part Start //////////////////////////////////////
                  Container(
                    //color: Colors.yellow,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ///////////////// Type Email Textfield  Start///////////////
                        Container(
                          margin:
                          EdgeInsets.only(left: 30, right: 30, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Color(0XFF09324B).withOpacity(0.6),
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextField(
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(1)),
                                      borderSide: BorderSide(
                                          color: Color(0xFF67C8FE), width: 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(1)),
                                      borderSide: BorderSide(
                                          color: Color(0xFF67C8FE), width: 1)),
                                  hintText: "Example@gmail.com",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF09324B),
                                      fontSize: 16,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                  contentPadding: EdgeInsets.only(
                                      left: 10, bottom: 12, top: 12),
                                  fillColor: Color(0xFFF8F8F8),
                                  filled: true,
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///////////////// Type Email Textfield  End///////////////

                        ///////////////// Type Password Textfield  Start///////////////
                        Container(
                          margin:
                          EdgeInsets.only(left: 30, right: 30, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Color(0XFF09324B).withOpacity(0.6),
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextField(
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: passwordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(1)),
                                      borderSide: BorderSide(
                                          color: Color(0xFF67C8FE), width: 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(1)),
                                      borderSide: BorderSide(
                                          color: Color(0xFF67C8FE), width: 1)),
                                  hintText: "**********",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF09324B),
                                      fontSize: 16,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                  contentPadding: EdgeInsets.only(
                                      left: 10, bottom: 12, top: 12),
                                  fillColor: Color(0xFFF8F8F8),
                                  filled: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ///////////////// Type Password Textfield  End //////////////
                      ],
                    ),
                  ),

                  ////////////////////////////// mIDDLE Part End //////////////////////////////////

                  //////////////////////////////// Bottom Part Start ///////////////////////////////////
                  Container(
                    //color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ///////////////// Log In Button  Start///////////////
                        Container(
                            margin: EdgeInsets.only(
                                left: 30, right: 30, bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: RaisedButton(
                              onPressed: () {
                                //Todo: Push onto logBook Screen for now. Authentication validation needs to be done.
                                //
                                Navigator.pushNamed(context, '/logbook');
                              }, //_login,
                              child: Text(
                                'Sign In',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 16.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              color: Color(0XFF67C8FE),
                              elevation: 2.0,
                            )),
                        ///////////////// Log In Button  End///////////////

                        Container(
                          margin:
                          EdgeInsets.only(left: 30, right: 30, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              /////////////////  text   ///////////////
                              Text(
                                ' Don\'t have an account ?',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Color(0XFF717171),
                                  fontSize: 12.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              /////////////////  Sign Up  Button Start  ///////////////
                              GestureDetector(
                                onTap: () {
                                  //Note: Pushes to sign up screen.
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: Text(
                                  ' Sign Up ',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color(0XFF717171),
                                    fontSize: 12.0,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        /////////////////  Sign Up  Button End  ///////////////
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  ' Or ',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color(0XFF717171),
                                    fontSize: 14.0,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              /////////////////  Sign Up with google  Button Start  ///////////////
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 30, right: 30, bottom: 15),
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  child: RaisedButton(
                                    onPressed: () {
                                      // Navigator.pop(context);
                                      // Navigator.push( context, SlideLeftRoute(page: BottomNavigationPage()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 10),
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/img/google.png'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Text(
                                          'Continue with google',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Color(0XFF75CBFE),
                                            fontSize: 14.0,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    color: Color(0XFFFFFFFF),
                                    elevation: 2.0,
                                  )),
                              /////////////////  Sign Up with google  Button End  ///////////////
                            ],
                          ),
                        ),
                      ],
                    ),
                  )

                  ////////////////////////////////// Bottom Part End /////////////////////////////////////
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
