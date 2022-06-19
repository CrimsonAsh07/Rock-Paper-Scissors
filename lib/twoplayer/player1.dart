import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/constants/colors.dart';
import 'package:stone_paper_scissors/twoplayer/player2.dart';

class Player1 extends StatelessWidget {
  String player1;
  String player2;
  Player1({required this.player1, required this.player2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(player1 + "'s Move",
              style: const TextStyle(
                fontFamily: 'Nexa',
                fontSize: 50,
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Choice(
                  type: 'rock',
                  color: rock,
                  player1: player1,
                  player2: player2),
              const SizedBox(
                height: 1,
                width: 20,
              ),
              Choice(
                  type: 'paper',
                  color: paper,
                  player1: player1,
                  player2: player2),
            ],
          ),
          const SizedBox(height: 20),
          Choice(
              type: 'scissor',
              color: scissor,
              player1: player1,
              player2: player2)
        ],
      ),
    );
  }
}

class Choice extends StatelessWidget {
  Color color;
  String type, player1, player2;
  Choice(
      {required this.type,
      required this.color,
      required this.player1,
      required this.player2});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => Player2(
                  player1: player1,
                  player2: player2,
                  color1: color,
                  type1: type)),
        );
      },
      child: Column(
        children: [
          Image.asset('assets/images/' + type + '.png', height: 75),
          Text(type,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Bebas',
                  fontWeight: FontWeight.bold)),
        ],
      ),
      height: 150,
      minWidth: 150,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
