import 'dart:collection';

class Stack {
  Queue<int> _queue = Queue();

  void push(int item) {
    _queue.addLast(item);
  }

  int pop() {
    if (_queue.isEmpty) {
      print("Stack is empty");
    }

    return _queue.removeLast();
  }
}

void main() {
  Stack myStack = Stack();

  // Push some elements onto the stack
  myStack.push(1);
  myStack.push(2);
  myStack.push(3);
  myStack.push(4);
  myStack.push(5);

  print("Original Stack: ${myStack._queue}");

  // Pop an element
  int poppedElement = myStack.pop();
  print("Popped Element: $poppedElement");

  print("Stack after popping: ${myStack._queue}");
}
