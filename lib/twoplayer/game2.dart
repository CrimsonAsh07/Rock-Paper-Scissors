import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/constants/colors.dart';

import 'package:stone_paper_scissors/home.dart';
import 'package:stone_paper_scissors/twoplayer/player1.dart';

class Game2 extends StatelessWidget {
  Color color1, color2;
  String type1, type2, player1, player2;

  Game2(
      {required this.color1,
      required this.color2,
      required this.type1,
      required this.type2,
      required this.player1,
      required this.player2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(children: [
            Column(
              children: [
                Container(
                  height: constraints.maxHeight / 2,
                  width: constraints.maxWidth,
                  color: color1,
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Text(player1,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Bebas',
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/images/' + type1 + '.png',
                          height: 150),
                      Text(type1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontFamily: 'Bebas',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  height: constraints.maxHeight / 2,
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.only(top: 75),
                  color: color2,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Text(player2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Bebas',
                              fontWeight: FontWeight.bold)),
                      Image.asset('assets/images/' + type2 + '.png',
                          height: 150),
                      Text(type2,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontFamily: 'Bebas',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Center(
                child: Container(
                  height: 10,
                  width: constraints.maxWidth,
                  color: bg,
                ),
              );
            }),
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: bg2,
                ),
                child: Text(
                    type1 == type2
                        ? 'Draw'
                        : ((type1 == 'rock' && type2 == 'paper') ||
                                (type1 == 'paper' && type2 == 'scissor') ||
                                (type1 == 'scissor' && type2 == 'rock'))
                            ? player2 + ' Wins!'
                            : player1 + ' Wins!',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Bebas',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: bg2,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      shape: const CircleBorder(),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      color: bg2,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) =>
                                  Player1(player1: player1, player2: player2)),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Icon(
                          Icons.replay,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      shape: const CircleBorder(),
                    ),
                  ],
                ))
          ]);
        },
      ),
    );
  }
}
