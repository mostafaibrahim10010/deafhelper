
import 'package:deafhelper/Screens/signsGridVew.dart';
import 'package:deafhelper/Screens/speechToText.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  SizedBox(height: 150,),
                  Container(
                    height: 180,
                    child: Image.asset("lib/assests/interpreter.png"),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Deaf Helper",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SpeechScreen()));
                      },
                      minWidth: 200,
                      height: 42,
                      child: const Text(
                        "Voice to Words",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignsScreen()));
                      },
                      minWidth: 200,
                      height: 42,
                      child: const Text(
                        "Learn about Signs",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
