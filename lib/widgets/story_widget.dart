import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String username;

  const StoryWidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.pink, width: 2),
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150',
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(username, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
