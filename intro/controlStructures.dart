void main(List<String> args) {
  List<num> numList = [1, 2, 3, 4, 5];

  for (var i = 0; i < numList.length; i++) {
    print(numList[i]);
  }

  for (var num in numList) {
    print(num);
  }
}
