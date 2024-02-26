void main() {
  List<int> number = [1, 2, 3, 4, 5, 6,7];
  int target = 7;
  int result = linear(number, target);
  if (result != -1) {
    print("Target $target found at index $result");
  } else {
    print("Target $target not found in the list");
  }
}

int linear(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {

      
      return i;
    }
  }
  return -1;
}
