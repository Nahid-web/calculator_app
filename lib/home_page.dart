import 'package:calculator_app/history.dart';
import 'package:calculator_app/operation.dart';
import 'package:calculator_app/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final num1 = TextEditingController();
  final num2 = TextEditingController();

  var result ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mini Calculator'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            //top upper part - input
            Expanded(
              flex: 1,
              //first row
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //first form field for input
                  Flexible(
                    child: Container(
                      width: 100,
                      child: TextFormField(
                        controller: num1,
                        keyboardType: TextInputType.number,
                        decoration: fieldStyle('Enter Num 1'),
                      ),
                    ),
                  ),
                  //second from field for input
                  Flexible(
                    child: Container(
                      width: 100,
                      child: TextFormField(
                        controller: num2,
                        keyboardType: TextInputType.number,
                        decoration: fieldStyle('Enter Num 2'),
                      ),
                    ),
                  ),
                ],
              ),
              //end 1st row
            ),

            // second upper part - show result
            Expanded(
              flex: 1,
              // 2nd row show result
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Text('Result', style: resultStyle(Colors.black),),
                  ),
                  Flexible(
                    child: Text(
                      result.toString() ,
                    style: resultStyle(Colors.blue),),
                  ),
                ],
              ),
              //end 2nd row
            ),

            //3rd upper section - operator
            //Mathematically operation
            Expanded(
              flex: 1,
              //3rd row - operator
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //summation
                  ElevatedButton(
                    onPressed: () {
                      result = operation(num1.text, num2.text, '+');
                      historylist.add(History(num1.text, num2.text, '+', result));
                      setState(() {

                      });
                      print(historylist[0].num1.toString());
                    },
                    style: buttonStyle(Colors.red),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Sum'),
                    ),
                  ),

                  //Subtraction
                  ElevatedButton(
                    onPressed: () {
                      result = operation(num1.text, num2.text, '-');
                      historylist.add(History(num1.text, num2.text, '-', result));
                     setState(() {

                     });
                    },
                    style: buttonStyle(Colors.green),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Sub'),
                    ),
                  ),
                  //multiplication
                  ElevatedButton(
                    onPressed: () {
                      result = operation(num1.text, num2.text, '*');
                      historylist.add(History(num1.text, num2.text, '*', result));
                      setState(() {

                      });
                    },
                    style: buttonStyle(Colors.orange),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Mul'),
                    ),
                  ),
                  //Division
                  ElevatedButton(
                    onPressed: () {
                      result = operation(num1.text, num2.text, '/');
                      historylist.add(History(num1.text, num2.text, '/', result));
                      setState(() {

                      });
                    },
                    style: buttonStyle(Colors.purple),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Div'),
                    ),
                  ),
                ],
              ),
              //end 3rd row
            ),

            //History bellow part
            Expanded(
              flex: 4,
              child: historyView(),
            ),
          ],
        ),
      ),
    );
  }
}

