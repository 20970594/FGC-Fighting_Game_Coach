import 'package:fgc_app/globals.dart';
import 'package:flutter/material.dart';

class RoutinPage extends StatefulWidget{
  const RoutinPage({super.key});

  @override
  State<RoutinPage> createState() => _HomePage();
}

class _HomePage extends State<RoutinPage> {
  
  String dropdownValue = 'One';
  int Menu = 1;

  void _incrementMenu() {
    setState(() {
      Menu++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Details'),
        automaticallyImplyLeading: false,
        actions: [
          DropdownButton<String>(
            value: 'one',
            items: const [
              DropdownMenuItem<String>(
                value: 'one',
                child: Text('GG')
              ),
              DropdownMenuItem<String>(
                value: 'two',
                child: Text('BB')
              ),
              DropdownMenuItem<String>(
                value: 'three',
                child: Text('SF')
              )
            ],
            onChanged: (String? newValue){
              setState((){
                dropdownValue = newValue!;
              });
            }
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 80,
              height: 150,
              child: Text("Detalles",textScaler: TextScaler.linear(2),),
            ),
            SizedBox(
              width: 120,
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Atras',textScaler: TextScaler.linear(1.5)),
              ),
            ),
          ],
        )
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                if(menuSelected==1){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RoutinPage()));
                }
                }, 
              child: const Icon(Icons.supervised_user_circle)),
            ElevatedButton(onPressed: _incrementMenu, child: const Icon(Icons.supervised_user_circle)),
            ElevatedButton(onPressed: _incrementMenu, child: const Icon(Icons.supervised_user_circle)),
            ElevatedButton(onPressed: _incrementMenu, child: const Icon(Icons.supervised_user_circle)),
            ElevatedButton(onPressed: _incrementMenu, child: const Icon(Icons.supervised_user_circle))
          ],
        )
        
      ],
    );
  }
}