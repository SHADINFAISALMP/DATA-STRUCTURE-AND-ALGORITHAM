class Stack {
  List<int> items = [];

  void push(int item) {
    items.add(item);
  }
  int pop() {
    if (items.isEmpty) {
      throw StateError("Stack is empty");
    }
    return items.removeLast();
  }
  void deleteMiddle() {
    int size = items.length;
    if (size == 0) {
      throw StateError("Stack is empty");
    }
    int middleIndex = size ~/ 2; // ~/ is the integer division operator
    List<int> tempStack = [];
    for (int i = 0; i < middleIndex; i++) {
      tempStack.add(pop());
    }
    // Skip the middle element
    pop();
    // Restore the elements back to the original stack
    while (tempStack.isNotEmpty) {
      push(tempStack.removeLast());
    }
  }
}
void main() {
  Stack myStack = Stack();
  myStack.push(1);
  myStack.push(2);
  myStack.push(3);
  myStack.push(4);
  myStack.push(5);
  print("Original Stack: ${myStack.items}");
  myStack.deleteMiddle();
  print("Stack after deleting middle element: ${myStack.items}");
}