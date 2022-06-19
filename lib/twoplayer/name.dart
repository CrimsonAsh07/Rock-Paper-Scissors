import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/twoplayer/player1.dart';

class Name2 extends StatefulWidget {
  const Name2({Key? key}) : super(key: key);

  @override
  State<Name2> createState() => _Name2State();
}

class _Name2State extends State<Name2> {
  TextEditingController nameController = TextEditingController();
  String player1 = '';
  String player2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff212529),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Player 1's Name: ",
                  style: TextStyle(
                    fontFamily: 'Nexa',
                    fontSize: 20,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 20),
              TextFormField(
                cursorColor: Colors.white,
                autofocus: false,
                style: const TextStyle(color: Colors.white, fontFamily: 'Nexa'),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff2d3136),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff2d3136)),
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff2d3136)),
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff2d3136)),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                onChanged: (text) {
                  setState(() {
                    player1 = text;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text("Player 2's Name: ",
                  style: TextStyle(
                    fontFamily: 'Nexa',
                    fontSize: 20,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: Colors.white,
                autofocus: false,
                style: const TextStyle(color: Colors.white, fontFamily: 'Nexa'),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff2d3136),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff2d3136)),
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff2d3136)),
                      borderRadius: BorderRadius.circular(10.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff2d3136)),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                onChanged: (text) {
                  setState(() {
                    player2 = text;
                  });
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                  minWidth: 120,
                  height: 50,
                  onPressed: (player1 == '' || player2 == '')
                      ? () {}
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Player1(
                                    player1: player1, player2: player2)),
                          );
                        },
                  color: const Color.fromARGB(255, 255, 119, 114),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Play",
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 20,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ));
  }
}
