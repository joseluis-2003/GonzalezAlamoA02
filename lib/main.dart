import 'package:flutter/material.dart';
import 'package:mancinacastroa02/widgets/btn_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Counter());
  }
}

class Counter extends StatefulWidget {
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  int count = 0;
  void add() {
    setState(() {
      count++;
      debugPrint("Contador: ${count}");
    });
  }

  void subtract() {
    setState(() {
      if (count > 0) {
        count--;
        debugPrint("Contador: ${count}");
      }
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
      debugPrint("Contador: ${count}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF353434),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CONTADOR',
              style: TextStyle(
                fontFamily: 'PoppinsBold',
                color: Colors.white,
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 150),
            Text(
              "${count}",
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 200,
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonCount(text: "-", fontsize: 20, onPressed: subtract),
                const SizedBox(width: 5),
                ButtonCount(
                    text: "RESET", fontsize: 20, onPressed: resetCounter),
                const SizedBox(width: 5),
                ButtonCount(text: "+", fontsize: 20, onPressed: add),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              'Bienvenido José Luis',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
