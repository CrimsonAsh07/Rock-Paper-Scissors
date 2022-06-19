import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/constants/colors.dart';
import 'package:stone_paper_scissors/twoplayer/game2.dart';

class Player2 extends StatelessWidget {
  String player1, player2, type1;
  Color color1;
  Player2(
      {required this.player1,
      required this.player2,
      required this.color1,
      required this.type1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(player2 + "'s Move",
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
                type2: 'rock',
                color2: rock,
                player1: player1,
                player2: player2,
                type1: type1,
                color1: color1,
              ),
              const SizedBox(
                height: 1,
                width: 20,
              ),
              Choice(
                type2: 'paper',
                color2: paper,
                player1: player1,
                player2: player2,
                type1: type1,
                color1: color1,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Choice(
            type2: 'scissor',
            color2: scissor,
            player1: player1,
            player2: player2,
            type1: type1,
            color1: color1,
          )
        ],
      ),
    );
  }
}

class Choice extends StatelessWidget {
  Color color1, color2;
  String type1, type2, player1, player2;

  Choice(
      {required this.color1,
      required this.color2,
      required this.type1,
      required this.type2,
      required this.player1,
      required this.player2});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color2,
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => Game2(
                  color1: color1,
                  color2: color2,
                  type1: type1,
                  type2: type2,
                  player1: player1,
                  player2: player2)),
        );
      },
      child: Column(
        children: [
          Image.asset('assets/images/' + type2 + '.png', height: 75),
          Text(type2,
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
