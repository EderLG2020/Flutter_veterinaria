import 'package:flutter/material.dart';
import 'Descripcionxd.dart';
import 'CreacionAnimalis_desk.dart';
import 'recomenda_animal.dart';
import 'package:flutter/services.dart';

class hamster extends StatelessWidget {
  String pathImage = "assets/image/hamster_1.jpg";
  String pathImage1 = "assets/image/hanster_2.jpg";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Stack(children: [
      Container(
        height: 270,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            descripanimal(pathImage),
            descripanimal(pathImage1),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 280),
        child: ListView(
          children: [
            new Descripcionxd(
                "Los cricetinos (Cricetinae) son una subfamilia de roedores, conocidos comúnmente como hámsteres (un germanismo). Se han identificado diecinueve especies actuales, agrupadas en siete géneros. \nLa mayoría son originarias de Oriente Medio y del sureste de los Estados Unidos.",
                "HAMSTER"),
            new listviewanimalesxd("CUIDADOS:",
                "\n\n- No lo bañes nunca; los hámsters son muy higiénicos y se limpian solos.\n- Respeta sus horas de sueño: son nocturnos, así que duermen durante el día.\n- Limpia su jaula una vez a la semana con agua y jabón."),
            new listviewanimalesxd("RECOMENDACIONES:",
                "\n - 1 cucharada de pienso + 1 ración de frutas y verduras al día.\n - Las mejores frutas para hámster son: manzana, fresa, plátano, melocotón, frutos del bosque, cereza.\n - El hámster debe disponer de agua fresca y limpia 24 h."),
            new listviewanimalesxd("TIPS O CONSEJOS:",
                "- Sácalo de su jaula y juega con él para que se acostumbre a ti y para que no se asilvestre.\n- Dedícale un rato de tu tiempo todos los días.\n- Respeta sus horas de sueño: son nocturnos, así que duermen durante el día.")
          ],
        ),
      ),
    ]);
  }
}
