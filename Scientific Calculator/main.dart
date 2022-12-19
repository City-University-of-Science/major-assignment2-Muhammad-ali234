import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to the scientific calculator!");

  //Taking input from user 1st input
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  //Taking input from user 2st input
  print("Enter the second number (if applicable):");
  double num2 = double.parse(stdin.readLineSync()!);

  //decision input from user for calculation
  print("Enter the operation (+, -, *, /, sqrt, sin, cos, tan):");
  String operation = stdin.readLineSync()!;

//put if else condition to print specific condition on specific time
  double? outPutResult;
  //condition for addition
  if (operation == "+") {
    outPutResult = num1 + num2;
  }
  //condition for subtraction
  else if (operation == "-") {
    outPutResult = num1 - num2;
  }
  //condition for Multiplication
  else if (operation == "*") {
    outPutResult = num1 * num2;
  }
  //condition for division
  else if (operation == "/") {
    outPutResult = num1 / num2;
  }
  //condition for square Root
  else if (operation == "sqrt") {
    outPutResult = sqrt(num1);
  }
  //condition for sin
  else if (operation == "sin") {
    outPutResult = sin(num1);
  }
  //condition for cos
  else if (operation == "cos") {
    outPutResult = cos(num1);
  }
  //condition for tan
  else if (operation == "tan") {
    outPutResult = tan(num1);
  }
  //condition for wrong input
  else {
    print("Invalid operator");
    return;
  }
  print("The result is: $outPutResult");
}