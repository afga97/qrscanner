import 'package:flutter/material.dart';

import 'package:qreaderapp/src/pages/direcciones_page.dart';
import 'package:qreaderapp/src/pages/mapas_page.dart';

import 'package:barcode_scan/barcode_scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.delete_forever),
            onPressed: (){},
          )
        ],
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _crearBottonNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.filter_center_focus),
        onPressed: _scanQR,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  _scanQR() async {
    //https://www.google.com/
    //geo 6.264511, -75.568831
    dynamic futureString ='';
    // try {
    //   futureString = await BarcodeScanner.scan();
    // }catch(e){
    //   futureString=e.toString();
    // }
    // print('Future String: ${futureString.rawContent}');
  }

  Widget _callPage(int paginaActual){
    switch(paginaActual) {
      case 0: return MapasPage();
      case 1: return DireccionesPage();
      default:
        return MapasPage();
    }
  }

  Widget _crearBottonNavigation(){
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapas')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title: Text('Direcciones')
        ),
      ],
    );
  }
}