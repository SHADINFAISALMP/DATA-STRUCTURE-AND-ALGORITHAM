// stack in array
class stack {
  List<int> _data = [];
  void push(int data) {
    _data.add(data);
  }
  int? pop() {
    if (_data.isNotEmpty) {
      return _data.removeLast();
    }
    return null;
  }
  void display() {
    print("stack is :$_data");
  }
}

//queue in array
class queue {
  List<int> datas = [];
  void enqueue(int data) {
    datas.add(data);
  }
  int? dequeue() {
    if (datas.isNotEmpty) {
      return datas.removeAt(0);
    }
    return null;
  }
  void display() {
    print("queue is:$datas");
  }
}
