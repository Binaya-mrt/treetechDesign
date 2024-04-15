import 'package:design/pages/screens/history.dart';
import 'package:design/pages/screens/rides.dart';
import 'package:design/pages/screens/setting.dart';
import 'package:design/pages/screens/homepaage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtomAppBar extends StatefulWidget {
  const ButtomAppBar({super.key});

  @override
  _ButtomAppBarState createState() => _ButtomAppBarState();
}

class _ButtomAppBarState extends State<ButtomAppBar> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const History(),
    const MyRides(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  buildMyNavBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = 0;
            });
          },
          icon: pageIndex == 0
              ? kIsWeb
                  ? SvgPicture.asset(
                      'icons/01.svg',
                      color: Theme.of(context).primaryColor,
                    )
                  : SvgPicture.asset(
                      'assets/icons/01.svg',
                      color: Theme.of(context).primaryColor,
                    )
              // : const Icon(
              //     Icons.home_outlined,
              //     color: Colors.black,
              //     size: 20,
              //   ),
              : kIsWeb
                  ? SvgPicture.asset(
                      'icons/01.svg',
                      color: Colors.black,
                    )
                  : SvgPicture.asset(
                      'assets/icons/01.svg',
                      color: Colors.black,
                    ),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? kIsWeb
                    ? SvgPicture.asset(
                        'icons/02.svg',
                        color: Theme.of(context).primaryColor,
                      )
                    : SvgPicture.asset(
                        'assets/icons/02.svg',
                        color: Theme.of(context).primaryColor,
                      )
                : kIsWeb
                    ? SvgPicture.asset(
                        'icons/02.svg',
                        color: Colors.black,
                      )
                    : SvgPicture.asset(
                        'assets/icons/02.svg',
                        color: Colors.black,
                      )),
        IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? kIsWeb
                    ? SvgPicture.asset(
                        'icons/03.svg',
                        color: Theme.of(context).primaryColor,
                      )
                    : SvgPicture.asset(
                        'assets/icons/03.svg',
                        color: Theme.of(context).primaryColor,
                      )
                : kIsWeb
                    ? SvgPicture.asset(
                        'icons/03.svg',
                        color: Colors.black,
                      )
                    : SvgPicture.asset(
                        'assets/icons/03.svg',
                        color: Colors.black,
                      )),
        IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? kIsWeb
                    ? SvgPicture.asset(
                        'icons/04.svg',
                        color: Theme.of(context).primaryColor,
                      )
                    : SvgPicture.asset(
                        'assets/icons/04.svg',
                        color: Theme.of(context).primaryColor,
                      )
                : kIsWeb
                    ? SvgPicture.asset('icons/04.svg', color: Colors.black)
                    : SvgPicture.asset(
                        'assets/icons/04.svg',
                        color: Colors.black,
                      )),
      ],
    );
  }
}
