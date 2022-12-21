import 'dart:io';
import 'dart:math';

average1() {
  List list = [];
  print('Enter the total number  you want to find average:');
  int num = int.parse(stdin.readLineSync()!);
  double average = 0;
  for (int i = 0; i < num; i++) {
    print('Enter value to add in List:${i + 1}');
    int value = int.parse(stdin.readLineSync()!);
    list.insert(i, value);
  }
  for (int j = 0; j < num; j++) {
    average = list[j] + average;
  }
  print('The average is :${average / list.length}');
}

void main() {
  print("Welcome to the scientific calculator!");

  print(
      "Enter the operation (+, -, *, /, sqrt, sin, cos, tan, acos, asin , atan, %, log, avg,power,cube):");
  String operation = stdin.readLineSync()!;

  double? num1, num2;

  //function to provide input used for +,-,/,%,power
  Print1() {
    print("Enter the first number(if power it is base):");
    num1 = double.parse(stdin.readLineSync()!);

    print("Enter the second number(if power it is exponent):");
    num2 = double.parse(stdin.readLineSync()!);
  }

  //function to provide input for sqrt,sin,cos,tan,acos,asin,atan,%,log
  Print2() {
    print("Enter the number:");
    num1 = double.parse(stdin.readLineSync()!);
  }

  switch (operation) {

    //condition for sum
    case '+':
      Print1();
      print(num1! + num2!);
      break;
    //condition for subtraction
    case '-':
      Print1();
      print(num1! - num2!);
      break;
    //condition for division
    case '/':
      Print1();
      print(num1! / num2!);
      break;
    //condition for multiplication
    case '*':
      Print1();
      print(num1! * num2!);
      break;
    //condition for square root
    case 'sqrt':
      Print2();
      print(sqrt(num1!));
      break;
    //condition for sin
    case 'sin':
      Print2();
      print(sin(num1!));
      break;
    //condition for cos
    case 'cos':
      Print2();
      print(cos(num1!));
      break;
    //condition for tan
    case 'tan':
      Print2();
      print(tan(num1!));
      break;
    //condition for acos
    case 'acos':
      Print2();
      print(acos(num1!));
      break;
    //condition for asin
    case 'asin':
      Print2();
      print(asin(num1!));
      break;
    //condition for atan
    case 'atan':
      Print2();
      print(atan(num1!));
      break;
    //condition for log
    case 'log':
      Print2();
      print(log(num1!));
      break;
    //condition for percentage
    case 'percentage':
      Print1();
      print((num1! / num2!) * 100);
      break;
    case 'power':
      Print1();
      print(pow(
        num1!,
        num2!,
      ));
      break;
    case 'cube':
      Print2();
      print(pow(num1!, 3));
      break;
    case 'avg':
      average1();
      break;
    //condition for wrong input
    default:
      print("Invalid operator");
      return;
  }
//   print("The result is: $result");
}
