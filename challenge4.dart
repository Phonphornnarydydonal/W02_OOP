// Challenge 4
class Point {
  final int dx;
  final int dy;
  const Point(this.dx, this.dy);
  String toString() {
    return "\($dx, $dy\)";
  }

  String translate() {
    return "\(${dx + 1}, ${dy + 2}\)";
  }
}

void main() {
  const Point point = Point(1, 2);
  print(point.toString());
  print(point.translate());
}
