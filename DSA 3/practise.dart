class graph {
  Map<int, List<int>> map = {};

  addtomap(int value) {
    map[value] = [];
  }

  bfs(int firstelement) {
    List<int> visited = [];
    List<int> queue = [];
    visited.add(firstelement);
    queue.add(firstelement);

    while (queue.isNotEmpty) {
      int curerntindex = queue.removeAt(0);
      print("$curerntindex");

      for (var element in map[curerntindex]!) {
        
      }
    }
  }
}
