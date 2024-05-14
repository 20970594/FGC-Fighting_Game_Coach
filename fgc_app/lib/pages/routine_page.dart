import 'package:fgc_app/data/routine.dart';
import 'package:fgc_app/data/user.dart';
import 'package:fgc_app/globals.dart';
import 'package:fgc_app/pages/game_page.dart';
import 'package:fgc_app/pages/explorer_page.dart';
import 'package:fgc_app/pages/guides_page.dart';
import 'package:fgc_app/pages/my_app.dart';
import 'package:fgc_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class RoutinePage extends StatefulWidget{
  const RoutinePage({super.key});

  @override
  State<RoutinePage> createState() => _RoutinePage();
}

class _RoutinePage extends State<RoutinePage>
    with TickerProviderStateMixin {
  
  String dropdownValue='one';
  String? dropdownCharValue;
  String? dropdownActionValue;
  String? dropdownAgainstValue;
  String? dropdownAttackValue;
  int menu = 1;

  Routine routineTemplate = Routine('','','',0,0);

  late AnimationController controller;

  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  @override
  void initState(){
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() { });
    });
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  void _addItem(){
    _items.insert(0, 'Routin ${_items.length+1}');
    _key.currentState!.insertItem(0, duration: const Duration(seconds:1));
  }

  void _removeItem(int index){
    _key.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                'Deleted',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  void _incrementMenu() {
    setState(() {
      menu++;
    });
  }

  @override
  Widget build(BuildContext context) {

    routineTemplate.setCreator(eseSoyYo.getName());

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Card(margin: EdgeInsets.all(10), color: Colors.grey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    SizedBox(height: 30, width: 250,
                      child: TextField(
                        onSubmitted:(value) => routineTemplate.setName(value),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Routine name'
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    SizedBox(height: 30,width: 400,
                      child: TextField(
                        onSubmitted:(value) => routineTemplate.setDescription(value),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Description'
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 10,),
                    DropdownButton<String>(
                      value: dropdownCharValue,
                      hint: const Text('Your character'),
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'one',
                          child: Image(height: 40,width: 40,
                            image: AssetImage(charIcon_01),
                            ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'two',
                          child: Image(height: 40,width: 40,
                            image: AssetImage(charIcon_02),
                            ),
                        )
                      ],
                      onChanged: (String? newValue){
                        setState((){
                          dropdownCharValue = newValue!;
                          if(dropdownActionValue=='one'){routineTemplate.setCharPick(charIcon_01);}
                          else if(dropdownActionValue=='two'){routineTemplate.setCharPick(charIcon_02);}
                          else{routineTemplate.setCharPick(charIcon_01);}
                        });
                      }
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(height: 30,width: 100,
                      child: TextField(
                        onSubmitted:(value) => routineTemplate.setYourInput(value),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Your action'
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    DropdownButton<String>(
                      value: dropdownAgainstValue,
                      hint: const Text('Against'),
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'one',
                          child: Image(height: 40,width: 40,
                            image: AssetImage(charIcon_01),
                            ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'two',
                          child: Image(height: 40,width: 40,
                            image: AssetImage(charIcon_02),
                            ),
                        ),
                      ],
                      onChanged: (String? newValue){
                        setState((){
                          dropdownAgainstValue = newValue!;
                          if(dropdownAgainstValue=='one'){routineTemplate.setEnemPick(charIcon_01);}
                          else if(dropdownAgainstValue=='two'){routineTemplate.setEnemPick(charIcon_02);}
                          else{routineTemplate.setEnemPick(charIcon_02);}
                        });
                      }
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      height: 30,
                      width: 110,
                      child: TextField(
                        onSubmitted:(value) => routineTemplate.setEnemyInput(value),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enemy action'
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    SizedBox(height: 30,width: 100,
                      child: TextField(
                        onSubmitted:(value) => routineTemplate.setObjective(double.parse(value)),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Repetitions'
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,)
              ]
            )
          ),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add)
          ),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const SizedBox(width: 10,),
                            Text(routineTemplate.getName(), style: const TextStyle(fontSize: 24)),
                            const SizedBox(width: 10,),
                            Text(eseSoyYo.getName(), style: const TextStyle(fontSize: 12)),
                            IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: (){
                              _removeItem(index);
                            },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(width: 10,),
                            Text(routineTemplate.getDescription(), style: const TextStyle(fontSize: 16)),
                          ]
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(width: 10,),
                            Text('Execute'),
                            const SizedBox(width: 10,),
                            SizedBox(width: 40,height: 40,
                              child: Image(image: AssetImage(routineTemplate.getCharPick())),
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(width: 100,height: 40,
                              child: Text(routineTemplate.getYourInput(),style: const TextStyle(fontSize: 16)),
                            ),
                            const SizedBox(width: 10,),
                            Text('Against'),
                            const SizedBox(width: 10,),
                            SizedBox(width: 40,height: 40,
                              child: Image(image: AssetImage(routineTemplate.getEnemPick())),
                            ),
                            const SizedBox(width: 10,),
                            SizedBox(width: 100,height: 40,
                              child: Text(routineTemplate.getEnemyInput(),style: const TextStyle(fontSize: 16)),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const Text('Progress: '),
                            SizedBox(height: 10,width: 100,
                              child: LinearProgressIndicator(value: controller.value,),
                            ),
                            SizedBox(width: 10),
                            Text('${routineTemplate.getProgress()}/${routineTemplate.getObjective()}')
                          ],
                        )
                      ]
                    )
                  ),
                );
              },
            ),
          )
        ],
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