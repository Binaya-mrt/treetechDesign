import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Settings",
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
