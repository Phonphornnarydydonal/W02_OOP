// Challenge 3
class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  String toString() {
    String fullname = this.firstName + " " + this.lastName;
    return "The person name is $fullname";
  }
}

void main() {
  Person person = Person("Lun", "Sokheng");
  print(person);
}
