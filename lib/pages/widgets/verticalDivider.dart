import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: VerticalDivider(
        color: Colors.black26,
        thickness: 2,
      ),
    );
  }
}
