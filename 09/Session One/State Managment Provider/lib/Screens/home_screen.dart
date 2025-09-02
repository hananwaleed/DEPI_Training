import 'package:flutter/material.dart';
import '../screens/item_added.dart';
import '../Widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ListView(
      children: [
        ItemCard(
          title: "Laptop",
          subtitle: "Gaming Laptop",
          price: 250,
          onAdd: () {
            print("Laptop Added");
          },
        ),
        ItemCard(
          title: "Phone",
          subtitle: "Flagship Phone",
          price: 150,
          onAdd: () {
            print("Phone Added");
          },
        ),
        ItemCard(
          title: "Laptop",
          subtitle: "Gaming Laptop",
          price: 250,
          onAdd: () {
            print("Laptop Added");
          },
        ),
        ItemCard(
          title: "Phone",
          subtitle: "Flagship Phone",
          price: 150,
          onAdd: () {
            print("Phone Added");
          },
        ),
        ItemCard(
          title: "Laptop",
          subtitle: "Gaming Laptop",
          price: 250,
          onAdd: () {
            print("Laptop Added");
          },
        ),
        ItemCard(
          title: "Phone",
          subtitle: "Flagship Phone",
          price: 150,
          onAdd: () {
            print("Phone Added");
          },
        ),
        ItemCard(
          title: "Laptop",
          subtitle: "Gaming Laptop",
          price: 250,
          onAdd: () {
            print("Laptop Added");
          },
        ),
        ItemCard(
          title: "Phone",
          subtitle: "Flagship Phone",
          price: 150,
          onAdd: () {
            print("Phone Added");
          },
        ),
        ItemCard(
          title: "Laptop",
          subtitle: "Gaming Laptop",
          price: 250,
          onAdd: () {
            print("Laptop Added");
          },
        ),
        ItemCard(
          title: "Phone",
          subtitle: "Flagship Phone",
          price: 150,
          onAdd: () {
            print("Phone Added");
          },
        ),
      ],
    ),
    ItemAdded(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentIndex == 0 ? "Home" : "Items"),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 4,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.interests), label: "Item"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
