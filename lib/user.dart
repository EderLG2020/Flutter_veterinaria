import 'package:flutter/material.dart';

class user extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image(
        image: AssetImage("assets/image/usuario.jpg"),
        fit: BoxFit.fill,
      ),
    );
  }
}
