import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'hamoperator_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    HamOperatorPage.tag: (context) => HamOperatorPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amateur Radio Emergency Service',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Raleway',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
