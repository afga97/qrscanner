import 'package:flutter/material.dart';

import 'package:qreaderapp/src/pages/home_page.dart';
import 'package:qreaderapp/src/pages/direcciones_page.dart';
import 'package:qreaderapp/src/pages/mapas_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'direcciones': (BuildContext context) => DireccionesPage(),
        'mapas': (BuildContext context) => MapasPage()
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
    );
  }
}