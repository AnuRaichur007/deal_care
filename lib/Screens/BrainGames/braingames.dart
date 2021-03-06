import 'package:deal_care/Screens/BrainGames/MemoryMaster/memorymaster.dart';
import 'package:deal_care/Screens/Puzzles/Sliding_Puzzle/slidingPuzzle.dart';
import 'package:deal_care/Screens/BrainGames/tictactoe/tictactoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BrainMenu extends StatelessWidget {
  const BrainMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.teal.shade700,
    title: Center(
      child: Text(
        'Memory Games',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
      ),
      body: SingleChildScrollView(
    child: Column(
      children: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Tictactoe()));
          },
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              elevation: 5.0,
              shadowColor: Colors.red.shade700,
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 80.0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/tictacto.png'),
                  ),
                  SizedBox(height:10.0),
                  Text(
                    'TIC TAC TO ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MemoryMaster()));
          },
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              elevation: 5.0,
              shadowColor: Colors.red.shade700,
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 80.0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/memorymaster.png'),
                  ),
                  SizedBox(height:10.0),
                  Text(
                    'Memory Master',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
      ),
    );
  }
}
