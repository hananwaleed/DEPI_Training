class User {
  String? name;
  String? role;
  // Named constructor
  User.guest() {
    name = 'Guest';
    role = 'Viewer';
  }

  void displayInfo() {
    print('Name: $name');
    print('Role: $role');
  }
}
