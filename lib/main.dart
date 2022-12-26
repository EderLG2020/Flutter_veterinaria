import 'package:flutter/material.dart';
import 'package:proyectoveterinaria/login.dart';
import 'Home.dart';
import 'login.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: login.ROUTE,
      routes: {
      login.ROUTE: (_) => login(),
      },
    );
  }

}
