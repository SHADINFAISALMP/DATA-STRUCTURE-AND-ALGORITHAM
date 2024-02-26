void main() {
  Map<String, dynamic> mymap = {"apple": 3, "mango": 2, "guava": 3};
  List<String> newmap = [];

  mymap.forEach((key, value) {
    if (value == 3) {
      newmap.add(key);
    }
  });
  print(newmap);
}
