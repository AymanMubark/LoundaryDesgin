import 'package:flutter/material.dart';
import 'package:loundary/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loundary Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(body1: TextStyle(fontWeight: FontWeight.bold)),
        
        iconTheme: IconThemeData(color: Colors.blue),
        
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Welcom'),
      },
    );
  }
}
