import 'package:fgc_app/globals.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class RoutinPage extends StatefulWidget{
  const RoutinPage({super.key});

  @override
  State<RoutinPage> createState() => _HomePage();
}

class _HomePage extends State<RoutinPage>
    with SingleTickerProviderStateMixin {
  
  String dropdownValue='one';
  String? dropdownCharValue;
  String? dropdownActionValue;
  String? dropdownAgainstValue;
  String? dropdownAttackValue;
  int Menu = 1;

final _items = [];
final GlobalKey<AnimatedListState> _key = GlobalKey();

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
            value: dropdownValue,
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
      body: Column(
        children: [
          const SizedBox(height: 10),
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
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10,),
                            Text(_items[index], style: const TextStyle(fontSize: 24)),
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
                            SizedBox(width: 10,),
                            DropdownButton<String>(
                              value: dropdownCharValue,
                              hint: Text('Your character'),
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'one',
                                  child: Text('Sol')
                                ),
                                DropdownMenuItem<String>(
                                  value: 'two',
                                  child: Text('Ky')
                                )
                              ],
                              onChanged: (String? newValue){
                                setState((){
                                  dropdownCharValue = newValue!;
                                });
                              }
                            ),
                            SizedBox(width: 10,),
                            DropdownButton<String>(
                              value: dropdownActionValue,
                              hint: Text('Action'),
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'one',
                                  child: Text('hit confirm')
                                ),
                                DropdownMenuItem<String>(
                                  value: 'two',
                                  child: Text('block')
                                ),
                                DropdownMenuItem<String>(
                                  value: 'three',
                                  child: Text('counter')
                                )
                              ],
                              onChanged: (String? newValue){
                                setState((){
                                  dropdownActionValue = newValue!;
                                });
                              }
                            ),
                            SizedBox(width: 10,),
                            DropdownButton<String>(
                              value: dropdownAgainstValue,
                              hint: Text('Against'),
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'one',
                                  child: Text('Sol')
                                ),
                                DropdownMenuItem<String>(
                                  value: 'two',
                                  child: Text('Ky')
                                ),
                              ],
                              onChanged: (String? newValue){
                                setState((){
                                  dropdownAgainstValue = newValue!;
                                });
                              }
                            ),
                            SizedBox(width: 10,),
                            DropdownButton<String>(
                              value: dropdownAttackValue,
                              hint: Text('Attack'),
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'one',
                                  child: Text('punch')
                                ),
                                DropdownMenuItem<String>(
                                  value: 'two',
                                  child: Text('kick')
                                ),
                                DropdownMenuItem<String>(
                                  value: 'three',
                                  child: Text('super')
                                )
                              ],
                              onChanged: (String? newValue){
                                setState((){
                                  dropdownAttackValue = newValue!;
                                });
                              }
                            ),
                          ],
                        ),
                      ]
                    )
                    /*child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: (){
                          _removeItem(index);
                        },
                      ),
                    ),*/
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