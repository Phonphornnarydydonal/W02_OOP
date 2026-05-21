enum Skill { dart, flutter, other }

class Address {
  String _city;
  String _street;
  String _zipCode;
  Address(this._city, this._street, this._zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skill> _skills;
  int _yearsOfExperience;
  Address _address;

  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._yearsOfExperience,
    this._address,
  );

  Employee.mobileDev(
    String name,
    double baseSalary,
    int yearsOfExperience,
    Address address,
  ) : _name = name,
      _baseSalary = baseSalary,
      _skills = [Skill.dart, Skill.flutter],
      _yearsOfExperience = yearsOfExperience,
      _address = address;

  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearsOfExperience => _yearsOfExperience;
  List<Skill> get skills => _skills;
  Address get address => _address;

  double computeSalary() {
    double totalSalary = _baseSalary + (_yearsOfExperience * 2000);
    for (var skill in skills) {
      if (skill == Skill.dart) {
        totalSalary += 3000;
      } else if (skill == Skill.flutter) {
        totalSalary += 5000;
      } else {
        totalSalary += 1000;
      }
    }
    return totalSalary;
  }
}

void main() {
  Employee e1 = Employee(
    "Heng",
    1800,
    [Skill.dart, Skill.flutter, Skill.other],
    3,
    Address("Phnom Penh", "S-02", "123456"),
  );
  Employee e2 = Employee.mobileDev(
    "gneH",
    1000,
    3,
    Address("Phnom Penh", "S-02", "123456"),
  );
  print(e1.computeSalary());
  print(e2.computeSalary());
}