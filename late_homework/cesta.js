const g = [
  /*     0  1  2  3  4  5  6  7  8*/
  /*0*/ [0, 1, 0, 0, 3, 0, 0, 0, 0],
  /*1*/ [1, 0, 4, 0, 2, 2, 0, 0, 0],
  /*2*/ [0, 4, 0, 0, 0, 1, 0, 0, 0],
  /*3*/ [0, 0, 0, 0, 2, 0, 0, 0, 0],
  /*4*/ [3, 2, 0, 2, 0, 0, 0, 3, 0],
  /*5*/ [0, 2, 1, 0, 0, 0, 0, 2, 0],
  /*6*/ [0, 0, 0, 0, 0, 0, 0, 0, 0],
  /*7*/ [0, 0, 0, 0, 3, 2, 0, 0, 1],
  /*8*/ [0, 0, 0, 0, 0, 0, 0, 1, 0],
];
console.log(pathExists(0, 8));
function pathExists(start, end) {
  const toVisit = [];
  const visited = [];
  toVisit.push(start);
  while (toVisit.length) {
    let actual = toVisit.pop();
    if (actual == end) {
      return true;
    }
    for (let node = 0; node < g[actual].length; node++) {
      if (!g[actual][node]) {
        continue;
      }
      if (node == end) {
        return true;
      }
      if (!toVisit.includes(node) && !visited.includes(node)) {
        toVisit.push(node);
      }
    }
    visited.push(actual);
  }
  return false;
}
