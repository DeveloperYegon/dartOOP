//mixins
class Employee {
  void clockin() {
    print("Emplyee clocked in");
  }
}

mixin Medical {
  int takeTemperature() {
    print(" Takes temperature");
    return 98;
  }
}

class Nurse extends Employee with Medical {
  //inheriting from employee
}

class Doctor extends Employee with Medical {
  // inherit from Employee
  performSurgery() {
    print("performing Surgery");
  }
}

class Bartender extends Employee {
  // inherits clockin from employee
}

void main() {
  Nurse nurse = Nurse();
  Doctor doctor = Doctor();
  Bartender bartender = Bartender();

// Use inherited methods
  nurse.clockin();
  nurse.takeTemperature();

  doctor.clockin();
  doctor.performSurgery();
  doctor.takeTemperature();

  bartender.clockin();
}
