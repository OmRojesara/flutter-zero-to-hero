// Classes, Objects, and Constructors in Dart
// This program demonstrates object-oriented programming concepts in Dart
// which are fundamental to Flutter development

void main() {
  print('=== Dart Classes and Objects Demo ===\n');
  
  demonstrateBasicClass();
  demonstrateNamedConstructors();
  demonstrateOptionalParameters();
  demonstrateInheritance();
  demonstrateStaticMembers();
}

void demonstrateBasicClass() {
  print('--- BASIC CLASS ---');
  
  // Creating objects using the default constructor
  Person person1 = Person('Alice', 25);
  Person person2 = Person('Bob', 30);
  
  // Calling methods on objects
  person1.introduce();
  person2.introduce();
  
  // Accessing properties
  print('${person1.name} is ${person1.age} years old');
  
  // Modifying properties
  person1.age = 26;
  print('After birthday: ${person1.name} is ${person1.age} years old');
  
  // Using getter
  print('${person1.name} is ${person1.isAdult ? 'an adult' : 'a minor'}');
  
  // Using setter
  person1.age = 17;
  print('After setting age to 17: ${person1.name} is ${person1.isAdult ? 'an adult' : 'a minor'}');
  
  print('');
}

void demonstrateNamedConstructors() {
  print('--- NAMED CONSTRUCTORS ---');
  
  // Using named constructor for guest user
  Person guest = Person.guest();
  guest.introduce();
  
  // Using named constructor for VIP user
  Person vip = Person.vip('John', 35, 'Gold');
  vip.introduce();
  
  // Using factory constructor
  Person admin = Person.admin('Admin User');
  admin.introduce();
  
  print('');
}

void demonstrateOptionalParameters() {
  print('--- OPTIONAL PARAMETERS ---');
  
  // Creating objects with different parameter combinations
  Product laptop = Product(
    name: 'Laptop',
    price: 999.99,
    category: 'Electronics',
  );
  
  Product book = Product(
    name: 'Dart Programming',
    price: 29.99,
  );
  
  Product mystery = Product(
    name: 'Mystery Item',
  );
  
  laptop.displayInfo();
  book.displayInfo();
  mystery.displayInfo();
  
  print('');
}

void demonstrateInheritance() {
  print('--- INHERITANCE ---');
  
  // Creating objects of different types
  Animal genericAnimal = Animal('Unknown', 4);
  Dog dog = Dog('Buddy', 'Golden Retriever');
  Cat cat = Cat('Whiskers', 'Persian');
  
  // Calling methods
  genericAnimal.makeSound();
  dog.makeSound();
  cat.makeSound();
  
  // Using polymorphism
  List<Animal> animals = [genericAnimal, dog, cat];
  print('\nAll animals making sounds:');
  for (Animal animal in animals) {
    animal.makeSound();
  }
  
  print('');
}

void demonstrateStaticMembers() {
  print('--- STATIC MEMBERS ---');
  
  // Accessing static properties
  print('Total persons created: ${Person.totalCount}');
  print('Current year: ${Person.currentYear}');
  
  // Calling static methods
  Person.printInfo();
  
  // Creating more objects to see count increase
  Person person3 = Person('Charlie', 28);
  Person person4 = Person('Diana', 32);
  
  print('After creating more persons: ${Person.totalCount}');
}

// Basic class with constructor and methods
class Person {
  // Instance variables
  String name;
  int _age;  // Private field
  
  // Static variables (shared across all instances)
  static int totalCount = 0;
  static int currentYear = 2024;
  
  // Default constructor
  Person(this.name, int age) : _age = age {
    totalCount++; // Increment count when new person is created
  }
  
  // Named constructor for guest users
  Person.guest() : name = 'Guest', _age = 18 {
    totalCount++;
  }
  
  // Named constructor for VIP users
  Person.vip(String name, int age, String level) : name = name, _age = age {
    totalCount++;
    print('VIP $level member created');
  }
  
  // Factory constructor - returns existing instance or creates new one
  factory Person.admin(String name) {
    // In a real app, you might check if admin already exists
    return Person(name, 25);
  }
  
  // Public getter for age
  int get age => _age;
  
  // Getter - computed property
  bool get isAdult => _age >= 18;
  
  // Setter - can add validation
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      print('Age cannot be negative');
    }
  }
  
  // Instance method
  void introduce() {
    print('Hi, I am $name and I am $_age years old');
  }
  
  // Static method
  static void printInfo() {
    print('Person class info:');
    print('Total persons: $totalCount');
    print('Current year: $currentYear');
  }
}

// Class with optional parameters
class Product {
  String name;
  double price;
  String category;
  bool inStock;
  
  // Constructor with optional parameters
  Product({
    required this.name,
    this.price = 0.0,
    this.category = 'General',
    this.inStock = true,
  });
  
  void displayInfo() {
    print('Product: $name');
    print('  Price: \$${price.toStringAsFixed(2)}');
    print('  Category: $category');
    print('  In Stock: ${inStock ? 'Yes' : 'No'}');
    print('');
  }
}

// Base class for inheritance example
class Animal {
  String name;
  int legs;
  
  Animal(this.name, this.legs);
  
  void makeSound() {
    print('$name makes a generic sound');
  }
}

// Derived class inheriting from Animal
class Dog extends Animal {
  String breed;
  
  // Call super constructor and initialize breed
  Dog(String name, this.breed) : super(name, 4);
  
  @override
  void makeSound() {
    print('$name the $breed barks: Woof! Woof!');
  }
}

// Another derived class
class Cat extends Animal {
  String breed;
  
  Cat(String name, this.breed) : super(name, 4);
  
  @override
  void makeSound() {
    print('$name the $breed meows: Meow!');
  }
}
