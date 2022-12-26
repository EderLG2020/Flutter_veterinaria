import 'package:flutter/material.dart';
import '';

class listviewanimalesxd extends StatelessWidget {
  String titulo = "CUIDADOS:";
  String contexto =
      "Evita cortarle sus garras.Solo un poco de ayuda para su aseoMucha Atención";

  listviewanimalesxd(this.titulo, this.contexto);

  @override
  Widget build(BuildContext context) {
    final presentetitulo = Container(
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
          fontWeight: FontWeight.w200,
        ),
      ),
    );

    final presentecontexto = Container(
      child: Text(
        contexto,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w200,
        ),
      ),
    );

    final contenedor = Container(
        margin: EdgeInsets.all(30),
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: new LinearGradient(
            colors: [
              Color(0xFF306BE3),
              Color(0xFFF33BD4),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.25, 0.90],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF101012),
              offset: Offset(-12, 12),
              blurRadius: 8,
            ),
          ],
        ),
        alignment: Alignment.centerLeft, //to align its child
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[presentetitulo, presentecontexto],
        ));

    return contenedor;
  }
}
