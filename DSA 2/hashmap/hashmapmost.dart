void main() {
  List<int> nums = [1, 4, 5, 6, 6, 6, 5, 3, 2, 4];
  Map<int, int> count = {};

  for (int element in nums) {
    count[element] = (count[element] ?? 0) + 1;
  }

  count.forEach((key, value) {
    print("$key occurred $value times");
  });
}
