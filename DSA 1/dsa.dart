void main() {
//   1 complexity o(n2)
  List<int> array = [6, 7, 8, 9, 4];
  int target = 10;

  for (int i = 0; i < array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] + array[j] == target) {
        print("found : ${array[i]}+${array[j]}=$target");
      }
    }
  }
// //1 make to less complexty o(n)
  List<int> aarray = [6, 7, 8, 9, 4];
  int ttarget = 10;
  List<int> match = [6];
  List<int> result = [];
  for (int i = 1; i < aarray.length; i++) {
    if (match.contains(ttarget - aarray[i])) {
      result.addAll([
        aarray[i],
      ]);
    }
  }
  print(result);

  // 2 number should to last target number
  List<int> list = [6, 7, 6, 5, 4, 6, 4, 3, 4, 5, 6];
  int tttarget = 6;
  int len = list.length;
  for (int i = 0; i < len; i++) {
    if (list[i] == tttarget) {
      int removedelements = list.removeAt(i);
      list.add(removedelements);
      i--;
      len--;
    }
  }
  print(list);

  
}
