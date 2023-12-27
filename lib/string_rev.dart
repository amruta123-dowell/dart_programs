//Input - "hi amruta"
//output - "hi aturma"

void main() {
  reverseString("hi amruta");
}

void reverseString(String name) {
  List revList = [];
  List tempName = name.split(' ');

  for (String _name in tempName) {
    String name = _name.split('').reversed.join();
    revList.add(name);
  }
  print("Reverse string list =========> ${revList.join(' ')}");
}
