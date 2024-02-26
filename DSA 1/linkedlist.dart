class node {
  int? data;
  node? next;

  node(int data) {
    this.data = data;
    this.next = null;
  }
}

class linked {
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

  printdata() {
    node? temp = head;
    if (temp == null) {
      print("no data");
      return;
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void delete(int data) {
    node? temp = head, prev = null;
    //check if the node to  be deleted is the head
    if (temp != null && temp.data == data) {
      head = temp.next; //move the head to the next node
      return;
    }
    //search for the node to be deleted
    while (temp != null && temp.data != data) {
      prev = temp; //move the prev pointter to the current node
      temp = temp.next; //move the temp pointer to the next node
    }
// if the node to deleted is not found
    if (temp == null) {
      return;
    }
    //if the node to deleted is the tail
    if (temp == tail) {
      tail = prev; //move the tail pointer to the previos node
      tail?.next = null; // update the next reefernce of the new tail to null
      return;
    }
    //if the node to deleted is in the middle od the list
    prev?.next = temp.next; //skip the temp node by updating prev.next
  }

  void insertdata(int data, int nextTo) {
    node newnode = node(data);
    node? temp = head;
    //find thhe node with the nextto value
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    // if the node with nextto is not found
    if (temp == null) {
      return;
    }
    // if the node with nextto is the tail
    if (temp == tail) {
      tail?.next = newnode;
      tail = newnode;
      return;
    }
// insert the new node after temp node
    newnode.next = temp.next;
    temp.next = newnode;
  }

  void removedupliactes() {
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

  void addattstart(int data) {
    node newnode = node(data);
    newnode.next = head;
    head = newnode;
    if (tail == null) {
      tail = newnode;
    }
  }

 
}

void main() {
  linked list = linked();
  list.adddata(20);
  list.adddata(50);
  list.adddata(70);
  list.adddata(70);
  list.adddata(70);
  list.delete(50);

  list.addattstart(111);
  list.removedupliactes();
  list.insertdata(100, 20);
  list.printdata();
}
