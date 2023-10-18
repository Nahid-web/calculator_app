import 'package:flutter/material.dart';

 operation(num1, num2, operator){
   double num1Double = double.tryParse(num1)??0;
   double num2Double = double.tryParse(num2)??0;

   if(operator == '+'){
     return num1Double +num2Double;
   }
   else if(operator =='-'){
     return num1Double - num2Double;
   }
   else if(operator == '*'){
     return num1Double * num2Double;
   }
   else if(operator == '/'){
     return num1Double / num2Double;
   }
 }