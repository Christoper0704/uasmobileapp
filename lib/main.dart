import 'package:flutter/material.dart';
import 'package:uasmobileapp/login.dart';
import 'package:uasmobileapp/pengunjung.dart';
import 'package:uasmobileapp/admin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UASMobileApp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Helvetica',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
