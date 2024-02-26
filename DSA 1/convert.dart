class Node {
  dynamic data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  

  // Add a node to the end of the linked list
  void add(dynamic data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  // Display the linked list
  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  List<int> array = [1, 2, 3, 4, 5];

  // Convert array to linked list
  LinkedList linkedList = LinkedList();
  for (int element in array) {
    linkedList.add(element);
  }

  // Display the linked list
  print("Linked List:");
  linkedList.display();
}
