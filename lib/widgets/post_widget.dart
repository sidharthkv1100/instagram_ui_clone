import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String caption;

  const PostWidget({
    super.key,
    required this.username,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
          ),
          title: Text(username),
          trailing: const Icon(Icons.more_vert),
        ),
        Image.network(
          'https://picsum.photos/500/400',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.comment),
              SizedBox(width: 10),
              Icon(Icons.send),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            caption,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
