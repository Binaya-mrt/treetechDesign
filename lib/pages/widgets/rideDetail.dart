import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RideDetailsCard extends StatelessWidget {
  const RideDetailsCard({
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

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/car.png'),
                  const Text(
                    'Scorpio',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    'BA 2 PA 007',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Rs. 200',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor),
                  ),
                  const Text(
                    '3 KM Away',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Card(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        FontAwesomeIcons.cookie,
                        size: 15,
                        color: Color(0xffEDD500),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        'Wheeler',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        FontAwesomeIcons.person,
                        size: 15,
                        color: Color(0xffEDD500),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        'Person',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
