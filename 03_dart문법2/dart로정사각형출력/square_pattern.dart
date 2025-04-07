void main() {
  var n = 10;
  var result = '';
  for (var y = 0; y < n; y++) {
    for (var x = 0; x < n; x++) {
      if (f1(x, y, n) || f2(x, y, n) || x == y || x == n - y - 1) {
        result += '=';
      } else {
        result += ' ';
      }
    }
    result += '\n';
  }
  print(result);
}

bool f1(int x, int y, int size) {
  return x == 0 || y == 0 || x == size - 1 || y == size - 1;
}

bool f2(int x, int y, int size) {
  return x == 0 || y == 0 || x == size - 1 || y == size - 1;
}
