/*
====================================
Assignment 1 (Theory Answers)
====================================

1. Difference between Class and Object:
- Class: Blueprint that defines properties and methods.
- Object: Instance of a class.

2. What is a Constructor? Types in Dart:
- Special method to initialize objects.
- Types: Default, Parameterized, Named.

3. How Dart handles Access Modifiers:
- No public/protected/private keywords.
- "_" prefix makes a member private to the file.

4. What is Encapsulation? How to implement:
- Hiding internal data and exposing through methods.
- Implement using Getter and Setter.

5. Why use Setter instead of public variable?
- To add validation and control access.
*/


// ====================================
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
