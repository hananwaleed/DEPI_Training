import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String timeAgo;
  final String content;

  const PostCard({
    super.key,
    required this.username,
    required this.timeAgo,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image.jpg"),
            ),

            title: Text(
              username,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  timeAgo,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                const SizedBox(height: 5),
                Text(content),
              ],
            ),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
