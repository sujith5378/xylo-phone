import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  void playsound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  ButtonStyle flatButtonStyle (Color color) => TextButton.styleFrom(
      primary: color,
      minimumSize: Size(88, 44),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      backgroundColor: color,
    );
  Expanded buildkey({Color color, int soundNumber}){
    return Expanded(
      child:TextButton(
      style: flatButtonStyle(color),
      onPressed: (){
        playsound(soundNumber);

      }, 
      ),
      );
      
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Container(
          width: 230,
           
          child: Drawer(
          child:Container(
            color: Colors.amber,
            child:Column(
            
            children: [
              CircleAvatar(
                
              ),
            ],
          ),
          )
          
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red,soundNumber: 1),
              buildkey(color: Colors.orange,soundNumber: 2),
              buildkey(color: Colors.yellow,soundNumber: 3),
              buildkey(color: Colors.green,soundNumber: 4),
              buildkey(color: Colors.teal,soundNumber: 5),
              buildkey(color: Colors.blue,soundNumber: 6),
              buildkey(color: Colors.purple,soundNumber: 7),
            ],
          ),
          
          
        ),
      ),
    );
  }
}
