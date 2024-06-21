class Job {
  String designation;
  double salary;
  int id;

  // constructor
  Job(this.designation, this.salary, this.id);

  // Setters
  void setDesignation(String designation) {
    this.designation = designation;
  }

  void setSalary(double salary) {
    this.salary = salary;
  }

  void setId(int id) {
    this.id = id;
  }

  // Getters
  String getDesignation() {
    return designation;
  }

  double getSalary() {
    return salary;
  }

  int getId() {
    return id;
  }
}

class Employee {
  String name;
  int age;
  Job job;

  // Constructor
  Employee(this.name, this.age, this.job);

  // Setters
  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  void setJob(Job job) {
    this.job = job;
  }

  // Getters
  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  Job getJob() {
    return job;
  }

  bool isSalaryGreaterThan50000() {
    return job.getSalary() > 50000;
  }

  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Job Designation: ${job.getDesignation()}");
    print("Job Salary: ${job.getSalary()}");
    print("Job ID: ${job.getId()}");
  }
}

void main() {
  // creating a Job object
  Job job1 = Job("Software Engineer", 7500000, 101);

  // creating an Employee object with the Job object
  Employee emp1 = Employee("Pakeeza", 21, job1);

  // Display employee details
  emp1.display();

  print("Is salary greater than 50,000? ${emp1.isSalaryGreaterThan50000()}");

  // Modifying employee details
  emp1.setName("Ayesha");
  emp1.setAge(28);
  emp1.getJob().setDesignation("Senior Software Engineer");
  emp1.getJob().setSalary(8500000);
  emp1.getJob().setId(102);

  emp1.display();

  print(
      "Is modified salary greater than 50,000? ${emp1.isSalaryGreaterThan50000()}");
}
