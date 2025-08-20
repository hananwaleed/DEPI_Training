import 'package:flutter/material.dart';
import 'package:login/screens/profile_screen.dart';
import 'package:login/widgets/app_colors.dart' show AppColors;
import 'package:login/widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        elevation: 0,
        title: Text(
          "Welcome back!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            PostCard(
              username: "Hanan Waleed",
              timeAgo: "11:11",
              content: "This is my first post 🎉",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Ali Hassan",
              timeAgo: "12:45",
              content: "Flutter is awesome 🚀 I just built my first app!",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Sara Ahmed",
              timeAgo: "Yesterday",
              content: "Enjoying a sunny day at the park ☀️🌳",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Mohamed Adel",
              timeAgo: "2h ago",
              content: "Working on my graduation project 💻👨‍💻",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Laila Mostafa",
              timeAgo: "5m ago",
              content: "Coffee time ☕❤️",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Omar Khaled",
              timeAgo: "9:30",
              content: "Just came back from the gym 🏋️ Feeling great!",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Nour Samir",
              timeAgo: "3d ago",
              content:
                  "Reading a new book 📚 Highly recommend 'Atomic Habits'.",
            ),
            const SizedBox(height: 5),
            PostCard(
              username: "Karim Fathy",
              timeAgo: "1h ago",
              content: "Traveling soon ✈️ Can't wait to explore new places!",
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: Container(
                width: 199,
                height: 53,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.2,
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [AppColors.primary, AppColors.secondary],
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Profile Screen",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
