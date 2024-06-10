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
        backgroundColor: Colors.grey[800],
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 10,),
            SizedBox(width: 70,height: 80,
            child: Image(image: AssetImage(ProfileIcon),width: 100, height: 100,)),
            SizedBox(width: 20,),
            Column(

              children: <Widget>[
                SizedBox(height: 10,),
                Text(eseSoyYo.getGameProfile().getName(), style: TextStyle(fontFamily: 'GuiltyGear',color: Colors.white),),
                Text(eseSoyYo.getGameProfile().getRank(), style: TextStyle(fontFamily: 'GuiltyGear',color: Colors.white),),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        actions: [
          DropdownButton<String>(
            value: dropdownValue,
            focusColor: Colors.grey[800],
            iconEnabledColor: Colors.white,
            items: const [
              DropdownMenuItem<String>(value: 'one',
              child: Image(height: 100,width: 150,
                image: AssetImage(GameIcon_01_1),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(GG_Background_02),
            fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 100,
                child: Text('Profile',style: const TextStyle(fontFamily: 'GuiltyGear',color: Colors.white, fontSize: 26))),
                SizedBox(width: 80, height: 30,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[850])),
                    onPressed: () {},
                    child: Text('Edit',style: const TextStyle(fontFamily: 'GuiltyGear',color: Colors.white, fontSize: 16))
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 200,
                child: Text('Name: Hentexsh\nState: Active',style: const TextStyle(fontFamily: 'GuiltyGear',color: Colors.white, fontSize: 20))),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                SizedBox(width: 200,
                child: Text('Game profiles',style: const TextStyle(fontFamily: 'GuiltyGear',color: Colors.white, fontSize: 26))),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.add))
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                SizedBox(width: 20,),
                SizedBox(width: 250, height: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[850])),
                    onPressed: (){},
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 200,
                        child: Text('Name: hentexsh2002\nRank: Floor 7',style: const TextStyle(fontFamily: 'GuiltyGear',color: Colors.white, fontSize: 20))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                SizedBox(width: 20,),
                SizedBox(width: 250, height: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[850])),
                    onPressed: (){},
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 200,
                        child: Text('Name: aaasta\nRank: Floor 10',style: const TextStyle(fontFamily: 'GuiltyGear',color: Colors.white, fontSize: 20))),
                      ],
                    ),
                  ),
                ),
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