import 'package:flutter/material.dart';
import 'package:riser_app/pages/get_started.dart';
import 'package:riser_app/pages/logbook.dart';
import 'package:riser_app/pages/login.dart';
import 'package:riser_app/pages/signup.dart';
import 'package:riser_app/pages/spash_screen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => SplashScreen(),
    '/getstarted': (context) => GetStarted(),
    '/login': (context) => LoginPage(),
    '/signup': (context) => SignUpPage(),
    '/logbook': (context) => LogBook(),
    '/addTunnel': (context) => GetStarted(),
    '/addBase': (context) => GetStarted(),
    '/addSkydive': (context) => GetStarted(),
    '/stats': (context) => GetStarted(),
    '/gear': (context) => GetStarted(),
  },
));


