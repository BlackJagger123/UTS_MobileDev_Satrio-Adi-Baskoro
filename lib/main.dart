import 'package:flutter/material.dart';
import 'package:tugas_uts_satrio/login.dart';
import 'package:tugas_uts_satrio/profil.dart';
import 'package:tugas_uts_satrio/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profil' : (context)=> ProfilePage(),
      },
    );
  }
}