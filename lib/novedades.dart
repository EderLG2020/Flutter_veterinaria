import 'package:flutter/material.dart';

class novedades extends StatelessWidget {
  String imagepath = "assets/image/novedad_1.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            children: <Widget>[
              new imagen("assets/image/novedad_1.jpg"),
              new imagen("assets/image/novedad_2.jpg"),
              new imagen("assets/image/novedad_3.jpg"),
              new imagen("assets/image/novedad_4.png"),
              new imagen("assets/image/novedad_5.jpg")
            ],
          ),
        ));
  }
}

class imagen extends StatelessWidget {
  String pathimagennove = "assets/image/novedad_1.jpg";
  imagen(this.pathimagennove);
  @override
  Widget build(BuildContext context) {
    final _imagen = Center(
      child: Container(
        margin: EdgeInsets.only(top: 60),
        height: 230,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(
              image: AssetImage(pathimagennove),
              fit: BoxFit.fill,
            )),
      ),
    );
    final _campo = Center(
        child: Container(
            height: 300,
            width: 330,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withOpacity(0.4),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            )));
    return Stack(
      children: [_campo, _imagen],
    );
  }
}
