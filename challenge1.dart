// Challenge 1
class Point {
  int dx;
  int dy;

  Point(this.dx, this.dy);

  void translate() {
    dx += 1;
    dy += 2;
  }

  String toString() {
    return "\($dx, $dy\)";
  }
}

void main() {
  Point point = Point(1, 2);
  print(point);
  point.translate();
  print(point);
}
