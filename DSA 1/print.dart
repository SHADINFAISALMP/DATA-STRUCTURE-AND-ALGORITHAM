void main() {
  List<int> nums = [1, 2, 3, 4, 5];
// print by reverse
  for (int i = nums.length - 1; i >= 0; i--) {
    print(nums[i]);
  }
//by order
  for (int num in nums) {
    print(num);
  }
}
