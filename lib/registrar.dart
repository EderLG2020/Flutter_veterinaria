import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectoveterinaria/Home.dart';
import 'package:proyectoveterinaria/animal.dart';
import 'bd.dart';
import 'animal.dart';
import 'package:flutter/services.dart';

class registrar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _registro();
  }
}

class _registro extends State<registrar> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  final idregistro = TextEditingController();
  final nombreregistro = TextEditingController();
  final especieregistro = TextEditingController();
  final cantidadregistro = TextEditingController();
  final _formkeyregistro = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          dividerColor: Colors.grey,
          primaryColor: Colors.blue,
          buttonTheme: ButtonThemeData(height: 50),
          textTheme: TextTheme(
              subtitle1: TextStyle(
                fontSize: 20,
              ),
              button: TextStyle(
                fontSize: 20,
              ))),
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            child: Icon(Icons.west_sharp),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              child: Form(
                  key: _formkeyregistro,
                  child: Container(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: TextFormField(
                            controller: idregistro,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Id",
                                border: UnderlineInputBorder(),
                                suffixIcon: Icon(Icons.account_circle_rounded)),
                            autofocus: true,
                            maxLength: 30,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Es necesario rellenar este campo';
                              }
                            },
                            onTap: () => {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Center(
                          child: TextFormField(
                            controller: nombreregistro,
                            keyboardType: TextInputType.text,
                            obscureText: false,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Nombre",
                                border: UnderlineInputBorder(),
                                suffixIcon: Icon(Icons.verified_user)),
                            autofocus: false,
                            maxLength: 30,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Es necesario rellenar este campo';
                              }
                            },
                            onTap: () => {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Center(
                          child: TextFormField(
                            controller: especieregistro,
                            keyboardType: TextInputType.text,
                            obscureText: false,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Especie",
                                border: UnderlineInputBorder(),
                                suffixIcon: Icon(Icons.verified_user)),
                            autofocus: true,
                            maxLength: 30,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Es necesario rellenar este campo';
                              }
                            },
                            onTap: () => {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Center(
                          child: TextFormField(
                            controller: cantidadregistro,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                labelText: "Cantidad",
                                border: UnderlineInputBorder(),
                                suffixIcon: Icon(Icons.verified_user)),
                            autofocus: true,
                            maxLength: 30,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Es necesario rellenar este campo';
                              }
                            },
                            onTap: () => {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: RaisedButton(
                            child: Text('Registrar'),
                            onPressed: () {
                              if (_formkeyregistro.currentState!.validate()) {
                                print("Valido");
                                DB.insert(Animal(
                                    id: idregistro.hashCode,
                                    nombre: nombreregistro.text,
                                    especie: especieregistro.text,
                                    cantidad: cantidadregistro.text));
                              }
                            }),
                      )
                    ]),
                  )),
            ),
          )),
    );
  }
}
