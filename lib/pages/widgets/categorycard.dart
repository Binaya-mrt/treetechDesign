import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.url, required this.title});
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(url),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
              )
            ],
          ),
        ));
  }
}
