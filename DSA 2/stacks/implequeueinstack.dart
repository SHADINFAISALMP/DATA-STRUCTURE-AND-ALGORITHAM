class MyQueue {
  List<int> stack1 = [];
  void push(int x) {
    stack1.add(x);
  }

  int pop() {
    return stack1.removeAt(0);
  }

  int peek() {
    return stack1.first;
  }

  bool empty() {
    return stack1.isEmpty;
  }
}

void main() {
  MyQueue que = MyQueue();
  que.push(200);
  print(que.peek());
}
