import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final String message;
  const MyMessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message,
                style: const TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
