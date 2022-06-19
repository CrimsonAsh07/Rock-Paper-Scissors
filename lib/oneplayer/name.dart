import 'package:flutter/material.dart';
import 'package:stone_paper_scissors/constants/colors.dart';
import 'package:stone_paper_scissors/oneplayer/selectionscreen.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  TextEditingController nameController = TextEditingController();
  String name = '';
  String rounds = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff212529),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Enter your Name: ",
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
                    name = text;
                  });
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                  minWidth: 120,
                  height: 50,
                  onPressed: name == ''
                      ? () {}
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelectionScreen()),
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
