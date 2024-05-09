import 'package:fgc_app/globals.dart';
import 'package:flutter/material.dart';

class GuidesPage extends StatefulWidget{
  const GuidesPage({Key? key}) : super(key: key);

  @override
  State<GuidesPage> createState() => _GuidesPage();
}

class _GuidesPage extends State<GuidesPage> {
  
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GuidesPage()));
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