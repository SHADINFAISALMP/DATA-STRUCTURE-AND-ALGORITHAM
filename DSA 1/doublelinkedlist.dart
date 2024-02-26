class node {
  int? data;
  node? next;
  node? prev;

  node(int data) {
    this.data = data;
    this.next = null;
    this.prev = null;
  }
}
class doublelinkedlist {
  node? head;
  node? tail;
  addvalue(int data) {
    node newnode = new node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }
  Print() {
    node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  printback() {
    node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

  void delete(int data) {
    node? current = head, prev = null;
    if (head != null && current?.data == data) {
      head = current?.next;
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
      tail?.next = current.next;
    }
    prev?.next = current.next;
  }

  void insert(int data, int nextto) {
    node? newnode = node(data);
    node? current = head;
    while (current != null && current.data != nextto) {
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (current == tail) {
      tail?.next = newnode;
      newnode.prev = tail;
      tail = newnode;
      return;
    }
    newnode.prev = current;
    newnode.next = current.next;
    current.next = newnode;
  }
}

void main() {
  doublelinkedlist list = doublelinkedlist();
  list.addvalue(823);
  list.addvalue(78);
//  list.insert(10, 823);
  // list.delete(78);

  list.Print();
  list.printback();
}
