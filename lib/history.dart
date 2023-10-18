import 'package:flutter/material.dart';

List historylist = [];

class History {
  var num1;
  var num2;
  var operator;
  var result;

  History(this.num1, this.num2, this.operator, this.result);
}

ListView historyView() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: historylist.length,
    itemBuilder: (context, index) {
      var num1 = historylist[index].num1.toString();
      var num2 = historylist[index].num2.toString();
      var operator = historylist[index].operator.toString();
      var result = historylist[index].result.toString();
      return Text('$num1 $operator $num2 = $result');
    },
  );
}
