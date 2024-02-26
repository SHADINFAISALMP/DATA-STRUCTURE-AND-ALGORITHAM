import 'linkedlist.dart';

class node {
  int? data;
  node? next;

  node(int data) {
    this.data = data;
    this.next = null;
  }
}

class linkedlist {
  node? head;
  node? tail;

  void adddata(int data) {
    node newnode = node(data);
    if (head == null) {
      head = newnode;
      tail = newnode;
    } else {
      tail?.next = newnode;
      tail = newnode;
    }
  }

  void addatstart(int data) {
    node newnode = node(data);
    newnode.next = head;
    head = newnode;
    if (tail == null) {
      tail = newnode;
    }
  }

  void insert(int data, int nextto) {
    node newnode = node(data);
    node? current = head;
    while (current != null && current.data != nextto) {
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (current == tail) {
      tail?.next = newnode;
      tail = newnode;
      return;
    }
    newnode.next = current.next;
    current.next = newnode;
  }

  void delete(int data) {
    node? current = head, prev = null;
    if (current != null && current.data == data) {
      head = current.next;
      return;
    }
    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (current == tail) {
      tail = prev;
      tail?.next = null;
    }
    prev?.next = current.next;
  }

  void remove() {
    node? current = head;
    while (current != null) {
      node? next = current.next;
      while (next != null && next.data == current.data) {
        next = next.next;
      }
      current.next = next;
      if (next == tail && current.data == next?.data) {
        tail = current;
        tail?.next = null;
      }
      current = next;
    }
  }

  printdata() {
    node? current = head;
    if (current == null) {
      print("no data");
      return;
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  linked list = linked();
  list.adddata(10);
  list.adddata(40);
  list.adddata(40);
  list.adddata(40);
  list.addattstart(20);
  list.insertdata(30, 20);
  list.delete(10);
  list.removedupliactes();
  list.printdata();
}
