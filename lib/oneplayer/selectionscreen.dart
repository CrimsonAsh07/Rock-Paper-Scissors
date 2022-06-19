import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/constants/colors.dart';
import 'package:stone_paper_scissors/oneplayer/game.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Your Move",
              style: TextStyle(
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
              Choice(type: 'rock', color: rock),
              const SizedBox(
                height: 1,
                width: 20,
              ),
              Choice(type: 'paper', color: paper),
            ],
          ),
          const SizedBox(height: 20),
          Choice(type: 'scissor', color: scissor)
        ],
      ),
    );
  }
}

class Choice extends StatelessWidget {
  Color color;
  String type;
  Choice({required this.type, required this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => Game(type: type, color: color)),
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
