import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      // padding: EdgeInsets.only(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: Colors.black26,
        ),
      ),

      // width: MediaQuery.sizeOf(context).width / 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '25th March 2024, 10:00 am',
              style: TextStyle(fontSize: 10, color: Colors.black87),
            ),
            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      radius: 7,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Airport, Biratnagar, Morang, Nepal',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const IntrinsicHeight(
                    child: Row(
                  children: [
                    VerticalDivider(
                      color: Colors.black26,
                      thickness: 1.2,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                  ],
                )),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 6,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Airport, Biratnagar, Morang, Nepal',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
