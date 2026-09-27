import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/Lat_column.dart';
import 'package:flutter_app3/pages/beranda.dart';
import 'package:flutter_app3/pages/biodata.dart';
import 'package:flutter_app3/pages/login.dart';
import 'package:flutter_app3/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routes = {
      "/home": (context) => const LoginPage(),
      "/beranda": (context) => const Beranda(),
      "/biodata": (context) => const Biodata(),
      "/register": (context) => const Register(),
      "/lat_column": (context) => const HalKolom(),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: routes,
    );
  }
}
