import 'package:fgc_app/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'routin_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                width: 50,
                height: 200,
              ),
              const SizedBox(
                width: 50,
                height: 50,
                child: Text('FGC'),
              ),
              const SizedBox(
                width: 150,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Usuario'
                  ),
                )
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 150,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Contraseña'
                  ),
                )
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RoutinPage()));
                  },
                  child: const Text('Iniciar Sesion'),
                ),
              )  
            ],
          ),
        ),
      ),
    );
  }
}
