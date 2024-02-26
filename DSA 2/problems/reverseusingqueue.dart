import 'dart:collection';

void reverseQueue(Queue<int> queue) {
  if (queue.isEmpty) {
    return; // Base case: the queue is empty
  }

  int frontElement = queue.removeFirst();
  reverseQueue(queue);
  queue.add(frontElement);
}

void printQueue(Queue<int> queue) {
  for (int element in queue) {
    print(element);
  }
}

void main() {
  Queue<int> myQueue = Queue.from([1, 2, 3, 4, 5]);

  print("Original Queue:");
  printQueue(myQueue);

  reverseQueue(myQueue);

  print("\nReversed Queue:");
  printQueue(myQueue);
}
