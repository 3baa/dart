
// Assignment 2: BankAccount Class
// ====================================
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Amount must be greater than 0");
    }
  }
}


// ====================================
// Assignment 3: User Class
// ====================================
class User {
  String _username = "";

  set username(String value) {
    if (value.isNotEmpty) {
      _username = value;
    } else {
      print("Username cannot be empty");
    }
  }

  String get username => _username;
}


// ====================================
// Assignment 4: E-Commerce Program
// ====================================

class Product {
  int _id;
  String _name;
  double _price;

  Product(this._id, this._name, this._price);

  int get id => _id;
  String get name => _name;
  double get price => _price;

  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print("Price must be greater than 0");
    }
  }
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart.");
  }

  void removeProduct(Product product) {
    products.remove(product);
    print("${product.name} removed from cart.");
  }

  void showCart() {
    if (products.isEmpty) {
      print("Cart is empty");
    } else {
      double total = 0;
      print("\n🛒 Products in cart:");
      for (var p in products) {
        print("- ${p.name} : \$${p.price}");
        total += p.price;
      }
      print("Total Price: \$${total}");
    }
  }
}


// ====================================
// Main Function
// ====================================
void main() {
  print("===== Assignment 2 Test =====");
  var account = BankAccount();
  account.deposit = 100;
  print("Balance: ${account.balance}");

  print("\n===== Assignment 3 Test =====");
  var user = User();
  user.username = "Alice";
  print("Username: ${user.username}");

  print("\n===== Assignment 4 Test =====");
  var p1 = Product(1, "Laptop", 1500);
  var p2 = Product(2, "Phone", 800);

  var cart = Cart();
  cart.addProduct(p1);
  cart.addProduct(p2);
  cart.showCart();

  cart.removeProduct(p1);
  cart.showCart();
}

class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void displayInfo() {
    print("Car - Brand: $brand, Year: $year, Doors: $doors");
  }
}

class Bike extends Vehicle {
  String type;

  Bike(String brand, int year, this.type) : super(brand, year);

  @override
  void displayInfo() {
    print("Bike - Brand: $brand, Year: $year, Type: $type");
  }
}


// ====================================
// 2. Method Override
// ====================================
class Animal {
  void speak() {
    print("Animal speaks");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog says: Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat says: Meow!");
  }
}


// ====================================
// 3. Abstraction
// ====================================
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}


// ====================================
// Main Function (Test All)
// ====================================
void mainOOP() {
  print("===== 1. Inheritance =====");
  var car = Car("Toyota", 2022, 4);
  var bike = Bike("Yamaha", 2021, "Sport");
  car.displayInfo();
  bike.displayInfo();

  print("\n===== 2. Method Override =====");
  List<Animal> animals = [Dog(), Cat(), Dog(), Cat()];
  for (var a in animals) {
    a.speak();
  }

  print("\n===== 3. Abstraction =====");
  var circle = Circle(5);
  var rectangle = Rectangle(4, 6);
  print("Circle Area: ${circle.area()}");
  print("Rectangle Area: ${rectangle.area()}");
}

