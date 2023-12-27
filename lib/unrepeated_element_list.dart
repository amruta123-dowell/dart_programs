// i/p -"abcabcabb"  o/p - abc
void main() {
  List<int> list = [1, 2, 3, 1, 2, 3, 4, 5];
  getListUnRepeated(list);
}

void getListUnRepeated(List<int> list) {
  List<int> listInt = [];
  for (int val in list) {
    if (listInt.contains(val) != true) {
      listInt.add(val);
    }
  }
  print(listInt);
}


