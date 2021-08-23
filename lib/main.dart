import 'package:flutter/material.dart';
import 'package:vegan/pages/no_connection_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoConnectionPage(),
    );
  }
}
