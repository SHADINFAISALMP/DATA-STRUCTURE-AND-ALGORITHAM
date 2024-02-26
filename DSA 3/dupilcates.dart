bool hasDuplicate(String str) {
  Map<String, int> charFrequency = {};

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    if (charFrequency.containsKey(currentChar)) {
      return true; // Duplicate found
    } else {
      charFrequency[currentChar] = 1;
    }
  }

  return false; // No duplicates found
}

void main() {
  // Example usage
  String stringWithDuplicates = "hello";
  String stringWithoutDuplicates = "world";

  print(hasDuplicate(stringWithDuplicates)); // Output: true
  print(hasDuplicate(stringWithoutDuplicates)); // Output: false
}
