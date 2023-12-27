void main() {
  revString("I am Amruta");
}

void revString(String stringName) {
  List revStringList = [];
  List listSplitNames = stringName.split(' ');
  print(listSplitNames);
  for (String name in listSplitNames) {
    String revName = name.split('').reversed.join();
    revStringList.add(revName);
  }
  print(revStringList.reversed.toList()); //[aturmA, ma, I]
  print(revStringList.reversed.toList().join(" ")); //aturmA ma I
}
