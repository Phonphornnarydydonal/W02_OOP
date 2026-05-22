// Challenge 2
class Point {
  int dx;
  int dy;

  Point({required this.dx, required this.dy});
}

class Rectangle {
  Point topLeft;
  Point bottomRight;
  Rectangle({required this.topLeft, required this.bottomRight});

  int findArea() {
    int height = topLeft.dy - bottomRight.dy;
    int width = bottomRight.dx - topLeft.dx;
    int area = height * width;
    return area;
  }

  String toString() {
    return "The rectangle area is ${findArea()}";
  }
}

void main() {
  Rectangle rectangle = Rectangle(
    topLeft: Point(dx: 4, dy: 8),
    bottomRight: Point(dx: 12, dy: 4),
  );
  print(rectangle);
}
