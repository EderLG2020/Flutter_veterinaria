import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Descripcionxd.dart';
import 'CreacionAnimalis_desk.dart';
import 'recomenda_animal.dart';

class configuracion extends StatelessWidget {
  String pathImage = "assets/image/perro_1.jpg";
  String pathImage1 = "assets/image/perro_2.jpg";
  String pathImage2 = "assets/image/perro_3.png";
  String pathImage3 = "assets/image/perro_4.png";
  String pathImage4 = "assets/image/perro_5.jpg";
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
            descripanimal(pathImage2),
            descripanimal(pathImage3),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 280),
        child: ListView(
          children: [
            new Descripcionxd(
                "El perro doméstico proviene de un grupo ancestral común que data de hace aproximadamente treinta mil años, y desde entonces se ha extendido a todas partes del mundo.\n Los primeros restos fósiles de perros enterrados junto con seres humanos se encontraron en Israel, y datan de hace unos doce mil años.",
                "PERROS"),
            new listviewanimalesxd("CUIDADOS:",
                "\n\n- Alimentación de calidad.\n\n- Paseos y actividad física.\n\n- Educación animal e Higiene"),
            new listviewanimalesxd("RECOMENDACIONES:",
                "\n - Acaricia a tu perro.\n - Un trato amoroso es muy aconsejable para su salud.\n - Premia su buen comportamientoLlévalo al veterinario de forma periódica"),
            new listviewanimalesxd("TIPS O CONSEJOS:",
                "- ELos perros nacen sordos y ciegos, por lo que necesitan de gran cuidado.\n- Tu perro es tan inteligente como un niño de dos años, tenle paciencia, es un niño eterno.\n- Pueden oír 4 veces más que los humanos, dile no a la pirotécnia")
          ],
        ),
      ),
    ]);
  }
}
