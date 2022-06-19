import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/constants/colors.dart';
import 'dart:math';

import 'package:stone_paper_scissors/home.dart';
import 'package:stone_paper_scissors/oneplayer/selectionscreen.dart';

class Game extends StatelessWidget {
  Color color;
  String type;
  Game({required this.type, required this.color});

  int index = Random().nextInt(3);
  var enemyTypes = ['rock', 'paper', 'scissor'];
  var enemyColors = [rock, paper, scissor];

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
                  color: enemyColors[index],
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Image.asset('assets/images/' + enemyTypes[index] + '.png',
                          height: 200),
                      Text(enemyTypes[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontFamily: 'Bebas',
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  height: constraints.maxHeight / 2,
                  width: constraints.maxWidth,
                  padding: const EdgeInsets.only(top: 75),
                  color: color,
                  child: Column(
                    children: [
                      Image.asset('assets/images/' + type + '.png',
                          height: 200),
                      Text(type,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 80,
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
                    enemyTypes[index] == type
                        ? 'Draw'
                        : ((enemyTypes[index] == 'rock' && type == 'paper') ||
                                (enemyTypes[index] == 'paper' &&
                                    type == 'scissor') ||
                                (enemyTypes[index] == 'scissor' &&
                                    type == 'rock'))
                            ? 'Win!'
                            : 'Lose',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
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
                              builder: (context) => const SelectionScreen()),
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
