void main() {
  factorialNumber(5);
}

factorialNumber(int number) {
  int product = 1;
  int sum = 0;
  for (int i = 1; i < number + 1; i++) {
    product = product * i;
  }
  print(product);
}
