import 'package:come_again/screens/choose_location.dart';
import 'package:come_again/screens/home.dart';
import 'package:come_again/screens/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (ct) => Loading(),
        '/home': (ct) => Home(),
        '/location': (ct) => ChooseLocation(),
      },
    ));
