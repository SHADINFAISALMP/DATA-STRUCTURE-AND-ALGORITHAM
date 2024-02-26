void main() {
  Map<String, dynamic> mymap = {
    'name': 'shadin faisal',
    'age': '25',
    'job': 'coding'
  };
  print("name :${mymap['name']}");
  print("age :${mymap['age']}");
  print("job :${mymap['job']}");

  mymap['age'] = '19';
  mymap['city'] = 'calicut';
  

  mymap['shaham'] = 22;
  
  print(mymap.containsKey("age"));
  print("updated map:");
  mymap.forEach((key, value) {
    print("$key:$value");
  });
}
