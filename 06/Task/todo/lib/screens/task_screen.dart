import 'package:flutter/material.dart';
import 'package:todo/screens/finish_scrren.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      "Buy groceries",
      "Study Flutter",
      "Exercise",
      "Read a book",
      "Call a friend",
      "Clean the house",
      "Finish homework",
      "Prepare dinner",
      "Go for a walk",
      "Meditate",
    ];

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text("ToDo List"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.check, color: Colors.white),
            tooltip: "Finish Tasks",
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const FinishScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.blue.shade100,
            child: const Text(
              "Your tasks for today",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.blue.withOpacity(0.1),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tasks[index]),
                      const Icon(Icons.task_alt, color: Colors.blueAccent),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Back to Home",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
