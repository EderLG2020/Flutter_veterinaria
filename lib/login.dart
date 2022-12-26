import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Home.dart';


class login extends StatelessWidget {

  static const String ROUTE ='/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerColor: Colors.grey,
        primaryColor: Colors.blue,
        buttonTheme: ButtonThemeData(height: 50),
        textTheme: TextTheme(
          subhead: TextStyle(
            fontSize: 20,
          ),
          button: TextStyle(
            fontSize: 20,
          )
        )
      ),
      home: Scaffold(
      body:  Column(
        children: <Widget>[
          formulario()
        ],
      )
      ),
    );

  }
}




class formulario extends StatelessWidget {
  final img=Container(
    width: 170,
    height: 170,
    margin: EdgeInsets.only(
      top: 80,
    ),
    child: FadeInImage(
      fadeInDuration: Duration(milliseconds: 1500),
      placeholder: AssetImage('assets/gif/loading.gif'),
      image: AssetImage('assets/image/logo_mr_pets.png') ,
    ),

  );
  final _formkey= GlobalKey<FormState>();
  final userlogin= TextEditingController();
  final passuser=TextEditingController();

  @override
  Widget build(BuildContext context) {

    final primeruser=TextFormField(
        keyboardType: TextInputType.text,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            labelText: "Usuario",
            border: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.account_circle_rounded)
        ),
        autofocus: true,
        maxLength: 30,
        controller: userlogin,
        validator: (value) {
          final String validauser="eder";
          if (value!.isEmpty) {
            return 'El campo esta vacio';
          } else{
            if(value!=validauser){
              return "error";
            }
          }
          return null;
        },
        onTap: () => {

        },
  );
    final segunpass=TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        textAlign: TextAlign.center,

        decoration: InputDecoration(
            labelText: "contraseña",
          suffixIcon: Icon(Icons.verified_user)
        ),
        autofocus: true,
        maxLength: 30,
        controller: passuser,
        validator: (value) {
          final String validapass="ed";
          if (value!.isEmpty) {
            return 'El campo esta vacio'  ;
          }else{
            if(value!=validapass){
              return "error";
            }
          }
        return null;
      },
          onTap: () => {
      },
    );

    final BTN_envio= Container(
      height: 50.0,
      width: 200.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Iniciar Sesion",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
        onPressed: () {
          if(_formkey.currentState!.validate()){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
              print("dato: "+userlogin.text +passuser.text);
            }else{
            showDialog(
              barrierDismissible: false,
                context: context,
                builder: (BuildContext context){
                  return Container(
                    child: AlertDialog(
                      backgroundColor: Colors.black54.withOpacity(0.3),

                      title: Text("ERROR",style: TextStyle(color: Colors.white.withOpacity(0.9)),),
                      actions: [
                        FlatButton(
                            color: Colors.red,

                            child: Text("Salir",style: TextStyle(
                                color: Colors.white.withOpacity(0.9)
                            ),
                            ),
                            onPressed: (){
                              Future.delayed(const Duration(milliseconds: 1000), () {
                                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                              });
                            }
                        ),
                        FlatButton(
                          color: Colors.green,

                            child: Text("continuar",style: TextStyle(
                                color: Colors.white.withOpacity(0.9)
                              ),
                            ),
                            onPressed: (){
                                Navigator.of(context).pop('Ok');
                            }
                            ),
                      ],
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text("Se ha detectado campos vacios",style: TextStyle(color: Colors.white.withOpacity(0.9)))
                          ],
                        ),
                      ),
                    ),
                  );
                }
            );
          }
        },
      ),
    );

    return SingleChildScrollView(

              child: Form(

                key: _formkey,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 50
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                          children: <Widget>[
                            img,
                            primeruser,
                            segunpass,
                            BTN_envio

                          ]
                      ),
                    ),
                  )
              ),
            );
  }
}

