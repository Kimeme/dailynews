import 'package:dailynews/views/homepage.dart';
import 'package:flutter/material.dart';
//import 'package:dailynews/helper/category_data.dart';
//import 'package:http/http.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    ));
