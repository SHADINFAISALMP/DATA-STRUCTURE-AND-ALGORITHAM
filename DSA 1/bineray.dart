int binarySearch(List<int> arr, int x) {
  int start = 0;
  int end = arr.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;

    if (x == arr[mid]) {
      return mid;
    } else if (x > arr[mid]) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }

  return -1;
}

void main() {
  List<int> arr = [2, 4, 5, 7, 14, 17, 19, 22];

  int search = binarySearch(arr, 22);
  print(search);
}
