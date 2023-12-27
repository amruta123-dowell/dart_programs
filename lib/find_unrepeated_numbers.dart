//2 list - [1,2,3,4,5,6,7] , [3,5,6,7,9,10]

// o/p - [1,2,4] -- non repeated numbers

void main() {
  getUnRepeatedList();
}

getUnRepeatedList() {
  List<int> one = [1, 2, 3, 4, 5, 6, 7];
  List<int> two = [3, 5, 6, 7, 9, 10];
  List nonRepeatedList = [];
  for (int i in one) {
    if (!two.contains(i)) {
      nonRepeatedList.add(i);
    }
  }
  print(nonRepeatedList);
}
