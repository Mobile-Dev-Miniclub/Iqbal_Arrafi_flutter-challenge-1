import 'package:flutter/material.dart';
import 'view/pages/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        'homepage' : (BuildContext context) => new HomePage(),
        'formlogin' : (BuildContext context) => new FormLogin(),
      },
    );
  }
}
