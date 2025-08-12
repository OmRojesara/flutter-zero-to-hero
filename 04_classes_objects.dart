// Classes and Objects in Dart - Simple Examples for Beginners
// Classes are like blueprints for creating objects

void main() {
  print('=== Learning Classes and Objects in Dart ===\n');
  
  // 1. Creating simple objects from our Student class
  learnAboutStudents();
  
  // 2. Creating objects with different constructors
  learnAboutConstructors();
  
  // 3. Creating objects with optional information
  learnAboutOptionalInfo();
  
  // 4. Learning about inheritance (one class using another)
  learnAboutInheritance();
  
  print('\n=== Classes help organize related data and functions! ===');
}

void learnAboutStudents() {
  print('--- CREATING STUDENT OBJECTS ---');
  
  // Creating a student object - like filling out a form
  Student student1 = Student('Om', 20, 'Computer Science');
  Student student2 = Student('Abhishek', 22, 'Engineering');
  
  // Getting information about students
  student1.introduce();
  student2.introduce();
  
  // Changing student information
  print('\n${student1.name} got older!');
  student1.age = 21;
  student1.introduce();
  
  // Checking if student can vote
  print('${student1.name} can vote: ${student1.canVote ? 'Yes' : 'No'}');
  print('${student2.name} can vote: ${student2.canVote ? 'Yes' : 'No'}');
  
  print('');
}

void learnAboutConstructors() {
  print('--- DIFFERENT WAYS TO CREATE STUDENTS ---');
  
  // Using default constructor
  Student regularStudent = Student('Akshit', 19, 'Physics');
  regularStudent.introduce();
  
  // Using named constructor for exchange student
  Student exchangeStudent = Student.exchange('Kartik', 21, 'Chemistry', 'Germany');
  exchangeStudent.introduce();
  
  // Using named constructor for guest student
  Student guestStudent = Student.guest();
  guestStudent.introduce();
  
  print('');
}

void learnAboutOptionalInfo() {
  print('--- STUDENTS WITH OPTIONAL INFORMATION ---');
  
  // Creating students with different amounts of information
  StudentInfo student1 = StudentInfo(
    name: 'Hardik',
    age: 20,
    course: 'Mathematics',
    hostel: 'Block A',
  );
  
  StudentInfo student2 = StudentInfo(
    name: 'Anand',
    age: 21,
    // course and hostel will use default values
  );
  
  student1.displayInfo();
  student2.displayInfo();
  
  print('');
}

void learnAboutInheritance() {
  print('--- INHERITANCE (ONE CLASS USING ANOTHER) ---');
  
  // Creating different types of people
  Person genericPerson = Person('Unknown', 25);
  StudentPerson student = StudentPerson('Om', 20, 'Computer Science');
  Teacher teacher = Teacher('Dr. Sharma', 35, 'Computer Science');
  
  // All of them can introduce themselves
  genericPerson.introduce();
  student.introduce();
  teacher.introduce();
  
  // But teachers have special methods
  teacher.teach();
  
  print('');
}

// Simple Student class - like a template for student information
class Student {
  // What information each student has
  String name;
  int _age;  // Private field
  String course;
  
  // Constructor - like a form to fill when creating a student
  Student(this.name, int age, this.course) : _age = age;
  
  // Named constructor for exchange students
  Student.exchange(String name, int age, String course, String country) 
      : name = name, _age = age, course = course {
    print('Welcome exchange student from $country!');
  }
  
  // Named constructor for guest students
  Student.guest() : name = 'Guest', _age = 18, course = 'General' {
    print('Guest student created');
  }
  
  // Public getter for age
  int get age => _age;
  
  // Getter - checks if student is old enough to vote
  bool get canVote => _age >= 18;
  
  // Setter - allows changing age with validation
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    } else {
      print('Age cannot be negative!');
    }
  }
  
  // Method - what a student can do
  void introduce() {
    print('Hi! I am $name, $_age years old, studying $course');
  }
}

// Class with optional parameters
class StudentInfo {
  String name;
  int age;
  String course;
  String hostel;
  
  // Constructor with some optional parameters
  StudentInfo({
    required this.name,
    required this.age,
    this.course = 'General Studies',
    this.hostel = 'Not Assigned',
  });
  
  void displayInfo() {
    print('\nStudent Information:');
    print('Name: $name');
    print('Age: $age');
    print('Course: $course');
    print('Hostel: $hostel');
  }
}

// Base class for inheritance example
class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
  
  void introduce() {
    print('Hello, I am $name, $age years old');
  }
}

// Student class inheriting from Person
class StudentPerson extends Person {
  String course;
  
  // Call parent constructor and initialize course
  StudentPerson(String name, int age, this.course) : super(name, age);
  
  @override
  void introduce() {
    print('Hi! I am $name, $age years old, studying $course');
  }
}

// Teacher class also inheriting from Person
class Teacher extends Person {
  String subject;
  
  Teacher(String name, int age, this.subject) : super(name, age);
  
  @override
  void introduce() {
    print('Hello, I am $name, $age years old, teaching $subject');
  }
  
  void teach() {
    print('$name is teaching $subject to students');
  }
}
