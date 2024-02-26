void main() {
  List<int> nums = [1, 1, 2, 2, 3, 3, 4, 5, 5, 5, 5];
  Map<int, int> count = {};

  for (int element in nums) {
    count[element] = (count[element] ?? 0) + 1;
  }

  int? maxKey;
  int maxCount = 0;

  count.forEach((key, value) {
    if (value > maxCount) {
      maxCount = value;
      maxKey = key;
    }
  });

  print("Element with the highest frequency: $maxKey");
}
