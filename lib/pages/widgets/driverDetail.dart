import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriverDetailsCard extends StatelessWidget {
  const DriverDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: Colors.black26,
        ),
      ),
      // height: 150,
      // width: MediaQuery.sizeOf(context).width / 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/8f82/d419/bb2640049345a16ed347b22286404585?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RBF9jWjYMAe7FJoDGd8l1K6b4qBZP9AnmNAPvsa2IUQnVN-maWop6TMZVm4MjlzTb1PyuP5fytNIzpMsnAmKKr8stz5dIN40rrjsYZDVBQMoeFtvd1SMum0-G5BadB5V~VaOND1L8EFyqsgIJ6cy40Yc94x07b7DXK-E7hWGo~oyJrgxFT~T2MpdRld0R0dW~OJcR~AT2tLpbeAAKbvYJpPLlBk0k~w4lnxEIaE~gJOsQJkXRNrr4z5WyghdPyI~N6Kp~KgsAgmzAjN9Dm1zGmnweKMqCwH2zE8FCoX7LrCrD2f8J0yJCt42fswkRPsZlGar6oq0lfxmdoPk6Q9olw__'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Doe',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Biratnagar',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                height: 40,
                width: 40,
                child: Icon(
                  FontAwesomeIcons.phone,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const Text(
                'Call',
                style: TextStyle(color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
