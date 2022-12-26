import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'productos.dart';
import 'configuracion.dart';
import 'reporte.dart';
import 'user.dart';
import 'novedades.dart';
import 'gatos.dart';
import 'hamster.dart';
import 'conejo.dart';

class Home extends StatefulWidget{

  HomeState createState()=>HomeState();
}

class HomeState extends State<Home>{

  int _selectDrawerItem=0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return user();
      case 1: return productos();
      case 2: return novedades();
      case 3: return reporte();
      case 4: return configuracion();
      case 5: return gatos();
      case 6: return hamster();
      case 7: return conejo();

    }
  }

  _onSelectItem(int pos){
    Navigator.of(context);
    setState(() {
      _selectDrawerItem=pos;
    });

  }


  @override
  Widget build (BuildContext context){
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          dividerColor: Colors.grey,
          primaryColor: Colors.indigo,
          buttonTheme: ButtonThemeData(height: 50),
          textTheme: TextTheme(
              subhead: TextStyle(
                fontSize: 20,
              ),
              button: TextStyle(
                fontSize: 20,
              )
          )
      ),
      home:Scaffold(
            appBar: AppBar(
            title: Text('Veterinario Cron'),

        ),
            drawer: Drawer(
            child: ListView(
              children: <Widget>[

                UserAccountsDrawerHeader(accountName: Text('Eder Nexón'), accountEmail: Text('ederll918@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      'E',
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),


                ListTile(
                  title: Text('User'),
                  leading: Icon(Icons.house_rounded),
                  selected: (0 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(0);
                  },
                ),

                Divider(),
                ListTile(
                  title: Text('Productos'),
                  leading: Icon(Icons.image),
                  selected: (1 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(1);
                  },
                ),

                Divider(),
                ListTile(
                  title: Text('Novedades'),
                  leading: Icon(Icons.hail,),
                  selected: (2 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(2);
                  },
                ),

                Divider(),
                ListTile(
                  title: Text('Reporte'),
                  leading: Icon(Icons.escalator_rounded),
                  selected: (3 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(3);
                  },
                ),

                Divider(),

                ListTile(
                  title: Text('Perros'),
                  leading: Icon(Icons.image),
                  selected: (4 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(4);
                  },
                ),

                Divider(),
                ListTile(
                  title: Text('Gatos'),
                  leading: Icon(Icons.image),
                  selected: (5 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(5);
                  },
                ),

                Divider(),
                ListTile(
                  title: Text('Hamster'),
                  leading: Icon(Icons.image),
                  selected: (6 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(6);
                  },
                ),

                Divider(),
                ListTile(
                  title: Text('Conejo'),
                  leading: Icon(Icons.image),
                  selected: (7 ==_selectDrawerItem),
                  onTap: (){
                    _onSelectItem(7);
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Salir'),
                  leading: Icon(Icons.add_to_home_screen_rounded),
                  selected: (8 ==_selectDrawerItem),
                  onTap: (){
                    Future.delayed(const Duration(milliseconds: 1000), () {
                      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    });
                  },
                ),
              ],
            ),
          ),

          body: _getDrawerItemWidget(_selectDrawerItem),

        ),
      );
    }
}