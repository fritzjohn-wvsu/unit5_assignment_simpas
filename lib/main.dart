import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the result section
  int sum = 0;
  int difference = 0;
  int product = 0;
  double quotient = 0;

  // either use a TextEditingController for each input field to get the value
  //add controller
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  //difference controller
  TextEditingController sub1Controller = TextEditingController();
  TextEditingController sub2Controller = TextEditingController();

  //multiplication controller
  TextEditingController mul1Controller = TextEditingController();
  TextEditingController mul2Controller = TextEditingController();

  //qoutient controller
  TextEditingController quo1Controller = TextEditingController();
  TextEditingController quo2Controller = TextEditingController();

  void totalSum() {
    setState(() {
      int firstNum = int.parse(add1Controller.text);
      int secondNum = int.parse(add2Controller.text);
      sum = firstNum + secondNum;
    });
  }

  void totalDifference() {
    setState(() {
      int firstNum = int.parse(sub1Controller.text);
      int secondNum = int.parse(sub2Controller.text);
      difference = firstNum - secondNum;
    });
  }

  void totalProduct() {
    setState(() {
      int firstNum = int.parse(mul1Controller.text);
      int secondNum = int.parse(mul2Controller.text);
      product = firstNum * secondNum;
    });
  }

  void totalQuotient() {
    setState(() {
      int firstNum = int.parse(quo1Controller.text);
      int secondNum = int.parse(quo2Controller.text);
      quotient = firstNum / secondNum;
    });
  }

  void clearAddRow() {
    setState(() {
      add1Controller.clear();
      add2Controller.clear();

      sum = 0;
    });
  }

  void clearDiffRow() {
    setState(() {
      sub1Controller.clear();
      sub2Controller.clear();

      difference = 0;
    });
  }

  void clearProRow() {
    setState(() {
      mul1Controller.clear();
      mul2Controller.clear();

      product = 0;
    });
  }

  void clearQuoRow() {
    setState(() {
      quo1Controller.clear();
      quo2Controller.clear();

      quotient = 0;
    });
  }

  void clearAllRow() {
    clearAddRow();
    clearDiffRow();
    clearProRow();
    clearQuoRow();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Addition",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 2,
          ),
          // Add Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                    controller: add1Controller,
                    decoration: InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                    controller: add2Controller,
                    decoration: InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number),
              ),

              Text(' = $sum'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  totalSum();
                },
              ),

              TextButton(
                  onPressed: () {
                    clearAddRow();
                  },
                  child: const Text("clear"))
              // b.b Add an button here
            ],
          ),
          Text("Subtraction",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 2,
          ),
          // 3.c - Add the other operations
          // Minus Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                    controller: sub1Controller,
                    decoration: InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                    controller: sub2Controller,
                    decoration: InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number),
              ),

              Text(' = $difference'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  totalDifference();
                },
              ),

              TextButton(
                  onPressed: () {
                    clearDiffRow();
                  },
                  child: const Text("clear"))
              // b.b Add an button here
            ],
          ),

          // Multiplication Row
          Text("Multiplication",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                    controller: mul1Controller,
                    decoration: InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number),
              ),
              const Text(" * "),
              Expanded(
                child: TextField(
                    controller: mul2Controller,
                    decoration: InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number),
              ),

              Text(' = $product'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  totalProduct();
                },
              ),

              TextButton(
                  onPressed: () {
                    clearProRow();
                  },
                  child: const Text("clear"))
              // b.b Add an button here
            ],
          ),

          // Division Row
          Text("Division",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                    controller: quo1Controller,
                    decoration: InputDecoration(labelText: "First Number"),
                    keyboardType: TextInputType.number),
              ),
              const Text(" / "),
              Expanded(
                child: TextField(
                    controller: quo2Controller,
                    decoration: InputDecoration(labelText: "Second Number"),
                    keyboardType: TextInputType.number),
              ),

              Text(' = $quotient'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  totalQuotient();
                },
              ),

              TextButton(
                  onPressed: () {
                    clearQuoRow();
                  },
                  child: const Text("clear"))
              // b.b Add an button here
            ],
          ),
          TextButton(
              onPressed: () {
                clearAllRow();
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(97, 2, 25, 84),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("CLEAR ALL",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
