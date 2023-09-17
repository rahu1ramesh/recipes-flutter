import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key, required this.instructions});

  final String instructions;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 25.0,
            ),
            child: Text(
              instructions,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
