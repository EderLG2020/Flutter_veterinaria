import 'package:flutter/material.dart';

class Descripcionxd extends StatelessWidget {
  String titulo = "No hay titulo";
  String relleno =
      "jsjsjsjsjs jsjsjsjsjsjsdnn jdjdjdj msmnvknkdnvkdn vdkvndvkdnn";

  Descripcionxd(this.relleno, this.titulo);
  @override
  Widget build(BuildContext context) {
    final iconostar = Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );

    final Cabecera = Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Text(
          titulo,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
          ),
        ));

    final carcteristicas = Container(
        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Container(
          child: Text(
            relleno,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ));

    return Column(
      children: [
        Row(
          children: <Widget>[
            Cabecera,
            iconostar,
            iconostar,
            iconostar,
            iconostar,
            iconostar,
          ],
        ),
        carcteristicas
      ],
    );
  }
}
