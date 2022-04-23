
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 59, 90, 24),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("DiceApp"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){

                  leftDice = 6;
                  setState(() {
                    
                  });

                }, child: Image.asset('assets/images/dice$leftDice.png')),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: (){
                  print('Right Dice');

                }, child: Image.asset('assets/images/dice1.png')),
            ),
          ],
        ),
      ),
    );
  }
}