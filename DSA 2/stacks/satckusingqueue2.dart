import 'dart:collection';

class MyStack {
  Queue<int> queue = Queue();

  void push(int x) {
    queue.add(x);
    for (int i = 0; i < queue.length - 1; i++) {
      queue.add(queue.removeFirst());
    }
  }

  int pop() {
    return queue.removeFirst();
  }

  int top() {
    return queue.first;
  }

  bool empty() {
    return queue.isEmpty;
  }
}

void main() {
  MyStack stack = MyStack();

  stack.push(10);
  print(stack.top());
}
