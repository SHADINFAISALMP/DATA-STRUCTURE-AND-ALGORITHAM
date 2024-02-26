void main() {
  String input = "gaamjjjj";

  int currentCount = 1;
  int maxCount = 1;
  String maxChar = input[0];

  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      currentCount++;

      if (currentCount > maxCount) {
        maxCount = currentCount;
        maxChar = input[i];
      }
    } else {
      currentCount = 1;
    }
  }

  print("The longest repeating character is '$maxChar' with a count of $maxCount.");
}
