import 'package:flutter/material.dart';
import 'package:proyectoveterinaria/animal.dart';
import 'bd.dart';
import 'registrar.dart';

class productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => registrar()));
          },
        ),
        body: Container(child: _Milista()));
  }
}

class _Milista extends StatefulWidget {
  @override
  _Milistastado createState() => _Milistastado();
}

class _Milistastado extends State<_Milista> {
  List<Animal> ani = [];

  @override
  void initState() {
    _loaddata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ani.length,
      itemBuilder: (_, i) => _createIte(i),
    );
  }

  _loaddata() async {
    List<Animal> auxanimal = await DB.animales();
    setState(() {
      ani = auxanimal;
    });
  }

  _createIte(int i) {
    return Dismissible(
      direction: DismissDirection.startToEnd,
      key: Key(i.toString()),
      background: Container(
          color: Colors.red,
          padding: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.delete, color: Colors.white),
          )),
      onDismissed: (direction) {
        print(direction);
        DB.delete(ani[i]);
      },
      child: ListTile(
        title: Text(ani[i].nombre),
        subtitle: Text(ani[i].especie + "    " + ani[i].cantidad),
        leading: CircleAvatar(
            backgroundImage: AssetImage('assets/image/mapachexd.png')),
      ),
    );
  }
}
