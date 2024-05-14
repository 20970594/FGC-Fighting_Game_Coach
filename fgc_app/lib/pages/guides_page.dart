import 'package:fgc_app/globals.dart';
import 'package:fgc_app/pages/explorer_page.dart';
import 'package:fgc_app/pages/game_page.dart';
import 'package:fgc_app/pages/my_app.dart';
import 'package:fgc_app/pages/profile_page.dart';
import 'package:fgc_app/pages/routine_page.dart';
import 'package:flutter/material.dart';

class GuidesPage extends StatefulWidget{
  const GuidesPage({Key? key}) : super(key: key);

  @override
  State<GuidesPage> createState() => _GuidesPage();
}

class _GuidesPage extends State<GuidesPage> {
  
  String dropdownValue = 'one';
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
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 10,),
            SizedBox(width: 20,height: 80,
            child: Icon(Icons.supervised_user_circle_rounded,size: 60,)),
            SizedBox(width: 50,),
            Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Text(eseSoyYo.getGameProfile().getName()),
                Text(eseSoyYo.getGameProfile().getRank()),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        actions: [
          DropdownButton<String>(
            value: dropdownValue,
            focusColor: Colors.white,
            items: const [
              DropdownMenuItem<String>(value: 'one',
              child: Image(height: 100,width: 150,
                image: AssetImage(GameIcon_01),
                ),
              ),
              DropdownMenuItem<String>(value: 'two',
              child: Image(height: 100,width: 150,
                image: AssetImage(GameIcon_02),
                ),
              ),
              DropdownMenuItem<String>(value: 'three',
              child: Image(height: 100,width: 150,
                image: AssetImage(GameIcon_03),
                ),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[ 
                    SizedBox(height: 20),
                    SizedBox(height: 50, width: 500,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text('HUD', style: const TextStyle(fontSize: 26))
                      )
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 50, width: 500,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text('Mechanics', style: const TextStyle(fontSize: 26))
                      )
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 50, width: 500,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text('Damage / Combo', style: const TextStyle(fontSize: 26))
                      )
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 50, width: 500,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text('Frame Data & System Data', style: const TextStyle(fontSize: 26))
                      )
                    ),
                  ]
                ),
              ),
            ]
          ),
        ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const GamePage()));
                }, 
              child: const Image(width: 25,height: 25,image: AssetImage(tabIcon_01))),
            ElevatedButton(
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ExplorerPage()));
              }, 
            child: const Image(width: 25,height: 25,image: AssetImage(tabIcon_02))),
            ElevatedButton(
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const RoutinePage()));
              }, 
            child: const Image(width: 25,height: 25,image: AssetImage(tabIcon_03))),
            ElevatedButton(
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const GuidesPage()));
              }, 
            child: const Image(width: 25,height: 25,image: AssetImage(tabIcon_04))),
            ElevatedButton(
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
              }, 
            child: const Icon(Icons.supervised_user_circle_rounded,size: 25,)),
          ],
        )
      ],
    );
  }
}