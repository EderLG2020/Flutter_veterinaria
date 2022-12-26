import 'Descripcionxd.dart';
import '';
import 'package:flutter/material.dart';

class descripanimal extends StatelessWidget {
  String pathImage = "assets/image/1917.png";
  descripanimal(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final _imagen = Container(
      margin: EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.7),
            spreadRadius: 8,
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
    );
    final _campo = Container(
      height: 320,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1d39e3), Color(0xff5799d2)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );

    return Stack(
      children: <Widget>[_campo, _imagen],
    );
  }
}
