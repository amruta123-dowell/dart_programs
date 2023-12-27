import 'dart:math';

void main() {
  armStrongNumber(500);
  palindromeNumber(121);
  perfectNumber(500);
  fibonacciSeries(5);
}

//Output -> [101, 111, 121, 131, 141, 151, 161, 171, 181, 191]
void palindromeNumber(int palindromeNumber) {
  int number = 0;
  int rev = 0;
  int rem = 0;
  List palNums = [];

  for (int i = 0; i < palindromeNumber + 1; i++) {
    if (i >= 0 && i <= 9) {
      continue;
    }
    number = i;
    rev = 0;
    rem = 0;

    while (number != 0) {
      rem = number % 10;
      rev = rev * 10 + rem;
      number = number ~/ 10;
      if (rev == i) {
        palNums.add(i);
      }
    }
  }
  print(palNums);
}

///Armstrong number
///o/p - [153, 370, 371, 407]
void armStrongNumber(int rangeNumber) {
  List listArmStrong = [];
  for (int i = 0; i < rangeNumber; i++) {
    if (i >= 0 && i <= 9) {
      continue;
    }
    int sum = 0;
    int num = i;
    int rem = 0;
    while (num != 0) {
      rem = num % 10;
      sum = (sum + pow(rem, 3)) as int;
      num = num ~/ 10;
    }
    if (i == sum) {
      listArmStrong.add(i);
    }
  }
  print(listArmStrong);
}

//perfect number

/// o/p = [0, 6, 28, 496]
/// 6 =1*2*3
/// 28 = 1*2*2*7
void perfectNumber(int range) {
  List listPerfectNumber = [];
  for (int i = 0; i < range + 1; i++) {
    int sum = 0;
    for (int j = 1; j < i; j++) {
      if (i % j == 0) {
        sum = sum + j;
      }
    }
    if (sum == i) {
      listPerfectNumber.add(i);
    }
  }
  print(listPerfectNumber);
}

///Fibonacci series

void fibonacciSeries(int maxRange) {
  int a = 0;
  int b = 1;
  int c = 0;
  List listFibSeries = [a];
  while (maxRange != 0) {
    a = b;
    b = c;
    c = a + b;
    listFibSeries.add(c);
    maxRange--;
  }

  print(listFibSeries);
}
