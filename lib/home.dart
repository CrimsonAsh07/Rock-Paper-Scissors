import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stone_paper_scissors/oneplayer/name.dart';
import 'package:stone_paper_scissors/twoplayer/name.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff212529),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  minWidth: 240,
                  height: 100,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Name()),
                    );
                  },
                  color: const Color.fromARGB(255, 255, 119, 114),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("1 PLAYER",
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 35,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ))),
              const SizedBox(height: 75),
              MaterialButton(
                  minWidth: 240,
                  height: 100,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Name2()));
                  },
                  color: const Color.fromARGB(255, 255, 119, 114),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("2 PLAYERS",
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 35,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        ));
  }
}
