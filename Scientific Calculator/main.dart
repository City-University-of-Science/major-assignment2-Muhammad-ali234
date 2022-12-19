import 'dart:io';

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
}
