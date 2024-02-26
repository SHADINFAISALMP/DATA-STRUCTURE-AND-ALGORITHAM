
// stack in linked
class node {
  int? data;
  node? next;
  node(int data) {
    this.data = data;
  }
}
class stack {
  node? top;
  void push(int data) {
    node newnode = node(data);
    if (top == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }
   pop() {
    if (top == null) {
      print('stack underflow');
      return ;
    }
    top = top?.next;
  }
  void display() {
    node? current = top;
    print("stack");
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

//queue in linked
class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
    this.next = null;
  }
}
class Queue {
  Node? front, rear;
  void enqueue(int value) {
    Node newNode = Node(value);
    if (front==null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }
 dequeue() {
    if (front==null) {
      print('Queue is empty. Cannot dequeue.');
      return null;
    }
    front = front!.next;
  }
  void display() {
    if (front==null) {
      print('Queue is empty.');
      return;
    }
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}