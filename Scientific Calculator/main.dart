import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to the scientific calculator!");

  //Taking 1st input from user
  print("Enter the first number:");
  String num1String = stdin.readLineSync()!;
  double num1 = double.parse(num1String);

  //Taking 2nd input from  user
  print("Enter the second number (if applicable):");
  String num2String = stdin.readLineSync()!;
  double num2 = double.parse(num2String);

  print(
      "Enter the operation (+, -, *, /, sqrt, sin, cos, tan, acos, asin , atan, percentage, log):");
  String operation = stdin.readLineSync()!;
  double? result;
  switch (operation) {

    //condition for sum
    case '+':
      result = num1 + num2;
      break;
    //condition for subtraction
    case '-':
      result = num1 - num2;
      break;
    //condition for division
    case '/':
      result = num1 / num2;
      break;
    //condition for multiplication
    case '*':
      result = num1 * num2;
      break;
    //condition for square root
    case 'sqrt':
      result = sqrt(num1);
      break;
    //condition for sin
    case 'sin':
      result = sin(num1);
      break;
    //condition for cos
    case 'cos':
      result = cos(num1);
      break;
    //condition for tan
    case 'tan':
      result = tan(num1);
      break;
    //condition for acos
    case 'acos':
      result = acos(num1);
      break;
    //condition for asin
    case 'asin':
      result = asin(num1);
      break;
    //condition for atan
    case 'atan':
      result = atan(num1);
      break;
    //condition for log
    case 'log':
      result = log(num1);
      break;
    //condition for percentage
    case 'percentage':
      result = (num1 / num2) * 100;
      break;
    //condition for wrong input
    default:
      print("Invalid operator");
      return;
  }
  ;
  print("The result is: $result");
}
