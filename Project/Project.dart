import 'dart:io';

void main() {
  var app = App();

    print("\t\t\t\t\tWelcome to This App");
  while (true) {
    print("Choose any one");
    print("1) Sign in");
    print("2) Sign up");
    print("3) Exit");

    print("Press 1 for Sign in, 2 for Sign up, and 3 for Exit");
    String? choice = stdin.readLineSync();

    if (choice == "1") {
      print("Enter Email:");
      String? email = stdin.readLineSync();
      print("Enter Password:");
      String? password = stdin.readLineSync();
      app.signin(email, password);
    } else if (choice == "2") {
      print("Enter Name:");
      String? name = stdin.readLineSync();
      print("Enter Email:");
      String? email = stdin.readLineSync();
      print("Enter Contact:");
      int? contact = int.parse(stdin.readLineSync()!);
      print("Enter Password:");
      String? password = stdin.readLineSync();
      app.signup(name, email, contact, password);
    } else if (choice == "3") {
      print("Thanks for choosing us");
      break;
    } else {
      print("Invalid Option");
    }
  }
}

class App {
  var names = [];
  var emails = [];
  var contacts = [];
  var passwords = [];

  void signup(String? name, String? email, int? contact, String? password) {
    if (emails.contains(email)) {
      print("User already available");
    } else {
      emails.add(email);
      passwords.add(password);
      names.add(name);
      contacts.add(contact);
      print("User registered successfully!");
    }
  }

  void signin(String? email, String? password) {
    int index = emails.indexOf(email);
    if (index != -1 && passwords[index] == password) {
      print("Login successful, Welcome ${names[index]}!");
    } else {
      print("Email and password are invalid");
    }
  }
}
