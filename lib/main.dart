import 'package:flutter/material.dart';
import 'package:worldTime/pages/home.dart';
import 'package:worldTime/pages/loading.dart';
import 'package:worldTime/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      // setting routes

      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
