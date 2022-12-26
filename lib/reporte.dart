import 'package:flutter/material.dart';

class reporte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image(
        image: AssetImage("assets/image/fondo_registro.jpg"),
        fit: BoxFit.fill,
      ),
    );
  }
}
