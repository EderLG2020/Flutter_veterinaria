import 'package:flutter/material.dart';
import 'Descripcionxd.dart';
import 'CreacionAnimalis_desk.dart';
import 'recomenda_animal.dart';

class gatos extends StatelessWidget {
  String pathImage="assets/image/gato_1.jpg";
  String pathImage1="assets/image/gato_2.jpg";
  String pathImage2="assets/image/gato_3.jpg";
  String pathImage3="assets/image/gato_4.jpg";
  String pathImage4="assets/image/gato_5.jpg";

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
                descripanimal(pathImage2),
                descripanimal(pathImage3),
                descripanimal(pathImage4),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 280),
            child: ListView(
              children: [
                new Descripcionxd("El gato doméstico (Felis silvestris catus), llamado más comúnmente gato, y de forma coloquial minino, michino, michi, micho, mizo, miz, morroño o morrongo, y algunos nombres más, es un mamífero carnívoro de la familia Felidae. Es una subespecie domesticada por la convivencia con el ser humano. El nombre actual en muchas lenguas proviene del latín vulgar catus. Irónicamente, catus aludía a los gatos salvajes, mientras que los gatos domésticos, en latín, eran llamados felis. Como resultado de mutaciones genéticas, cruzamiento y selección artificial, hay numerosas razas. Algunas, como la raza sphynx o la peterbald están desprovistas de pelo; otras carecen de cola, como los gatos de la raza manx, y algunas tienen coloraciones atípicas, como los llamados gatos azules.\n Los primeros restos fósiles de perros enterrados junto con seres humanos se encontraron en Israel, y datan de hace unos doce mil años.", "GATOS"),
                new listviewanimalesxd("CUIDADOS:", "\n\n- Evita cortarle sus garras..\n\n- Solo un poco de ayuda para su aseo.\n\n- Mucha Atención"),
                new listviewanimalesxd("RECOMENDACIONES:", "\n - Ponerle una camita cómoda y amplia, preferiblemente suave..\n - Darle mucho cariño y atención, si no pueden deprimirse como cualquier mascota.\n - Comprarle dos platos de comida hondos, para la comida y agua."),
                new listviewanimalesxd("TIPS O CONSEJOS:", "- Si tienes  plantas, procura que no sean tóxicas, ya que suelen masticarlas.\n- Lleva cuidado, en verano los parásitos se multiplican.\n- Cepíllalo a menudo. Así evitaras que trague mucho pelo muerto cuando se limpian.")
              ],
            ),
          ),



        ]
    );
  }
}


