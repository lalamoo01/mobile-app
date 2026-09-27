import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/Lat_column.dart';
import 'package:flutter_app3/pages/beranda1.dart';
import 'package:flutter_app3/pages/biodata.dart';
import 'package:flutter_app3/pages/konsentrasikeahlian.dart';
import 'package:flutter_app3/pages/login.dart';
import 'package:flutter_app3/pages/register.dart';
import 'package:flutter_app3/pages/datasiswa.dart';
import 'package:flutter_app3/pages/datasekolah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routes = {
      '/login': (context) => const LoginPage(),
      "/home": (context) => const LoginPage(),
      "/beranda": (context) => const Beranda1(),
      "/biodata": (context) => const Biodata(),
      "/register": (context) => const Register(),
      "/lat_column": (context) => const HalKolom(),
      "/datasiswa": (context) => const DataSiswa(),
      '/datasekolah': (context) => const DataSekolah(),
      "/konsentrasikeahlian": (context) => const KonsentrasiKeahlian()

    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: routes,
    );
  }
}
