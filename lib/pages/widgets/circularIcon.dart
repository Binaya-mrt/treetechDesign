import 'package:flutter/material.dart';

class CircularIconCard extends StatelessWidget {
  const CircularIconCard({
    super.key,
    required this.color,
    required this.icon,
  });

  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
      ),
      child: Card(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 15,
          child: Icon(
            // FontAwesomeIcons.solidUser,
            icon,
            size: 15,
            color: color,
          ),
        ),
      ),
    );
  }
}
