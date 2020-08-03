import 'package:app_farm/src/pages/other_page.dart';
import 'package:app_farm/src/pages/perfil_page.dart';
import 'package:app_farm/src/pages/productos_page.dart';
import 'package:app_farm/src/pages/promociones_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final perfilPage _perfil = perfilPage();
  final productosPage _productos = productosPage();
  final promocionesPage _promociones = promocionesPage();
  final OtherPage _otherPage = OtherPage();

  Widget _showPage = new promocionesPage();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _perfil;
        break;
      case 1:
        return _productos;
        break;
      case 2:
        return _promociones;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text('pagina no encontrada.',style: new TextStyle(fontSize: 30),),
            
          ),
        );
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageIndex,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.blur_circular, size: 40,color: Colors.white,),
            Icon(Icons.shopping_cart, size: 40,color: Colors.white,),
            Icon(Icons.person, size: 40,color: Colors.white,),
            
          ],
          color: Colors.red,
          buttonBackgroundColor: Colors.black,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage=_pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
            // child: Column(
            //   children: <Widget>[
            //     Text(pageIndex.toString(), textScaleFactor: 10.0),
            //     RaisedButton(
            //       child: Text('Go To Page of index 1'),
            //       onPressed: () {
            //         final CurvedNavigationBarState navBarState =
            //             _bottomNavigationKey.currentState;
            //         navBarState.setPage(1);
            //       },
            //     )
            //   ],
            // ),
          ),
        ));
  }
}
