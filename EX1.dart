enum Skill { FLUTTER, DART, OTHER }

class Address {
  String street;
  String city;
  String zipCode;

  Address(this.street, this.city, this.zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  Address _address;
  List<Skill> _skills;
  int _yearsOfExperience;

  Employee(
    this._name,
    this._baseSalary,
    this._yearsOfExperience,
    this._address,
    this._skills,
  );

  Employee.developer(this._name, this._address, this._yearsOfExperience)
    : _baseSalary = 40000,
      _skills = [Skill.FLUTTER, Skill.DART];

  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearsOfExperience => _yearsOfExperience;
  List<Skill> get skills => _skills;
  Address get address => _address;

  double computeSalary() {
    double salary = _baseSalary;

    salary += _yearsOfExperience * 2000;

    for (Skill skill in _skills) {
      if (skill == Skill.FLUTTER) {
        salary += 5000;
      } else if (skill == Skill.DART) {
        salary += 3000;
      } else if (skill == Skill.OTHER) {
        salary += 1000;
      }
    }

    return salary;
  }

  void printInfo() {
    print('--- Employee Info ---');
    print('Name: $_name');
    print('Street: ${_address.street}');
    print('City: ${_address.city}');
    print('ZipCode: ${_address.zipCode}');
    print('Years of Experience: $_yearsOfExperience');
    print('Skills: $_skills');
    print('Base Salary: \$$_baseSalary');
    print('Final Salary: \$${computeSalary()}');
    print('--------------------');
  }
}

void main() {
  Address addr1 = Address('123 Main St', 'Phnom Penh', '750');

  Employee emp1 = Employee.developer('Thida', addr1, 5);
  emp1.printInfo();
}
