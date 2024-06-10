import 'package:fgc_app/data/game_profile.dart';
import 'package:fgc_app/data/user.dart';
import 'package:fgc_app/globals.dart';
import 'package:flutter/material.dart';

import 'routine_page.dart';

User eseSoyYo = User('name', 'password', 'email');

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

  String name='';
  String password='';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                width: 50,
                height: 200,
              ),
              const SizedBox(
                width: 250,
                height: 80,
                child: Image(width: 500,height: 250,image: AssetImage(AppIcon)),
              ),
              const SizedBox(
                height: 20,
                ),
              SizedBox(
                width: 150,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  onSubmitted: (value) => eseSoyYo.setName(value),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Usuario',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                )
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  onSubmitted: (value) => eseSoyYo.setPassword(value),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
                )
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    /*eseSoyYo.setName(name);
                    eseSoyYo.setPassword(password);*/
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RoutinePage()));
                  },
                  child: const Text('Iniciar Sesion',style: TextStyle(fontSize: 16),),
                ),
              )  
            ],
          ),
        ),
        
      ),
    );
  }
}
