void main() {
  List<int> array = [2, 4, 8, 9, 0];
  bubblesort(array);
  print(array);
}

bubblesort(List<int> array) {
  int n = array.length;

  for (int i = 0; i < n - 1; i++) {
    for (var j = 0; j < n - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}
