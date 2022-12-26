import 'package:flutter/material.dart';
import 'Descripcionxd.dart';
import 'CreacionAnimalis_desk.dart';
import 'recomenda_animal.dart';

class conejo extends StatelessWidget {
  String pathImage="assets/image/conejo_1.jpg";
  String pathImage1="assets/image/conejo_2.jpg";
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height:270,
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
                new Descripcionxd("El gato doméstico (Felis silvestris catus), llamado más comúnmente gato, y de forma coloquial minino, michino, michi, micho, mizo, miz, morroño o morrongo, y algunos nombres más, es un mamífero carnívoro de la familia Felidae. Es una subespecie domesticada por la convivencia con el ser humano. El nombre actual en muchas lenguas proviene del latín vulgar catus. Irónicamente, catus aludía a los gatos salvajes, mientras que los gatos domésticos, en latín, eran llamados felis. Como resultado de mutaciones genéticas, cruzamiento y selección artificial, hay numerosas razas. Algunas, como la raza sphynx o la peterbald están desprovistas de pelo; otras carecen de cola, como los gatos de la raza manx, y algunas tienen coloraciones atípicas, como los llamados gatos azules.\n Los primeros restos fósiles de perros enterrados junto con seres humanos se encontraron en Israel, y datan de hace unos doce mil años.", "GATOS"),
                new listviewanimalesxd("CUIDADOS:", "\n- Una jaula limpia y lo más grande posible (tiene que caber el conejo de pie, de alto), donde va a dormir.\n- Comida: heno, hojas de lechuga frescas, pienso, etc.\n- Cacas: Tienen que ser redonditas, pequeñas y compactas."),
                new listviewanimalesxd("RECOMENDACIONES:", "\n - PBase de la dieta: Heno, SIN CEREALES NI SEMILLAS.\n - 2 veces al día: Hojas verdes frescas.\n - Cepillado: Aproximadamente cada 3 meses los conejos hacen un cambio de pelo por lo que es importante cepillar a menudo."),
                new listviewanimalesxd("TIPS O CONSEJOS:", "- SEs importante que cuando le dejéis fuera de la jaula, le pongáis la esquinera.\n- Poner vinagre de vino con un trapito e impregnar la zona, para evitar que muerdan todo.\n- No se pueden pasar por la calle, se podrían estresar muchísimo con todos los sonidos de fuera.")
              ],
            ),
          ),



        ]
    );
  }
}


