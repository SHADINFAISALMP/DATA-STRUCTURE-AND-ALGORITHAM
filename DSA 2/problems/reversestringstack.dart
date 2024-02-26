class Stack {
  List<String> items = [];

  void push(String item) {
    items.add(item);
  }

  String pop() {
    if (items.isEmpty) {
      throw StateError("Stack is empty");
    }
    return items.removeLast();
  }
}

String reverseString(String input) {
  Stack charStack = Stack();

  // Push each character onto the stack
  for (int i = 0; i < input.length; i++) {
    charStack.push(input[i]);
  }

  // Pop characters to construct the reversed string
  String reversedString = '';
  while (!charStack.items.isEmpty) {
    reversedString += charStack.pop();
  }

  return reversedString;
}

void main() {
  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);

  print("Original String: $originalString");
  print("Reversed String: $reversedString");
}
