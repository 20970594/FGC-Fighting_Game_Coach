import 'package:fgc_app/globals.dart';
import 'package:fgc_app/pages/explorer_page.dart';
import 'package:fgc_app/pages/game_page.dart';
import 'package:fgc_app/pages/guides_page.dart';
import 'package:fgc_app/pages/my_app.dart';
import 'package:fgc_app/pages/routine_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  
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
            SizedBox(height: 20),
            const Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 200,
                child: Text('Profile',style: const TextStyle(fontSize: 26))),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 200,
                child: Text('Hentexsh',style: const TextStyle(fontSize: 20))),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 200,
                child: Text('Game profiles',style: const TextStyle(fontSize: 26))),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.add))
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 200,
                child: Text('hentexsh2002',style: const TextStyle(fontSize: 20))),
              ],
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