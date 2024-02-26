void main() {
  List<int> array = [2, 5, 8, 2, 8, 1, 0];
  bubblesort(array);
  print("bubble sort $array");

  insertionsort(array);
  print("insertion sort $array");

  Selectionsort(array);
  print("selection sort $array");

  quicksort(array, 0, array.length - 1);
  print("quicksort is $array");

  List<int> array2 = mergesort(array);
  print("merge sort $array2");
}

//bubble sort
bubblesort(List<int> array) {
  int n = array.length;

  for (var i = 0; i < n - 1; i++) {
    for (var j = 0; j < n - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}

//insertion sort
insertionsort(List<int> array2) {
  int n = array2.length;

  for (var i = 1; i < n; i++) {
    int temp = array2[i];
    int j = i - 1;

    while (j >= 0 && array2[j] > temp) {
      array2[j + 1] = array2[j];
      j = j - 1;
    }
    array2[j + 1] = temp;
  }
}

//selection sort
Selectionsort(List<int> array3) {
  int n = array3.length;

  for (var i = 0; i < n - 1; i++) {
    int min = i;
    for (var j = i + 1; j < n; j++) {
      if (array3[j] < array3[min]) {
        min = j;
      }
    }
    int temp = array3[min];
    array3[min] = array3[i];
    array3[i] = temp;
  }
}

//quick sort
void quicksort(List<int> array, int start, int end) {
  if (start >= end) {
    return;
  }

  int pivot = start;
  int left = start + 1;
  int right = end;

  while (left <= right) {
    if (array[left] >= array[pivot] && array[right] <= array[pivot]) {
      swap(array, left, right);
      left++;
      right--;
    }
    if (array[left] < array[pivot]) {
      left++;
    }
    if (array[right] > array[pivot]) {
      right--;
    }
  }
  swap(array, right, pivot);
  quicksort(array, start, right - 1);
  quicksort(array, right + 1, end);
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}

//mergesort
List<int> mergesort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  int middle = array.length ~/ 2;
  List<int> firsthalf = array.sublist(0, middle);
  List<int> secondhalf = array.sublist(middle);
  return join(mergesort(firsthalf), mergesort(secondhalf));
}

List<int> join(List<int> firsthalf, List<int> secondhalf) {
  int i = 0;
  int j = 0;
  List<int> array = [];
  while (i < firsthalf.length && j < secondhalf.length) {
    if (firsthalf[i] < secondhalf[j]) {
      array.add(firsthalf[i++]);
    } else {
      array.add(secondhalf[j++]);
    }
  }
  while (i < firsthalf.length) {
    array.add(firsthalf[i++]);
  }
  while (j < secondhalf.length) {
    array.add(secondhalf[j++]);
  }
  return array;
}
