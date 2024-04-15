import 'package:design/constants.dart';
import 'package:design/pages/widgets/carouselslider.dart';
import 'package:design/pages/widgets/categorycard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10.0,
        centerTitle: true,
        elevation: 0,
        title: SvgPicture.asset('assets/icons/logo.svg'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/8f82/d419/bb2640049345a16ed347b22286404585?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RBF9jWjYMAe7FJoDGd8l1K6b4qBZP9AnmNAPvsa2IUQnVN-maWop6TMZVm4MjlzTb1PyuP5fytNIzpMsnAmKKr8stz5dIN40rrjsYZDVBQMoeFtvd1SMum0-G5BadB5V~VaOND1L8EFyqsgIJ6cy40Yc94x07b7DXK-E7hWGo~oyJrgxFT~T2MpdRld0R0dW~OJcR~AT2tLpbeAAKbvYJpPLlBk0k~w4lnxEIaE~gJOsQJkXRNrr4z5WyghdPyI~N6Kp~KgsAgmzAjN9Dm1zGmnweKMqCwH2zE8FCoX7LrCrD2f8J0yJCt42fswkRPsZlGar6oq0lfxmdoPk6Q9olw__'),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome, Prem!",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    height: 3,
                    color: Color(0xff202244)),
              ),
              // Text('What service would you like to seek from  365trips  Today?')
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12.0,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff545454).withOpacity(0.4),
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                        text: 'What service would you like to seek from'),
                    TextSpan(
                        text: '\n 365trips ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor)),
                    const TextSpan(text: 'Today? '),
                  ],
                ),
              ),
              SliderContainer(list: promoImagelist),
              // 600 16 700 12
              const Text(
                'Categories',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: const [
                  CategoriesCard(
                    title: "RESERVATIONS",
                    url: 'assets/images/car.png',
                  ),
                  CategoriesCard(
                    title: "AIRPORT SERVICES",
                    url: 'assets/images/airport.png',
                  ),
                  CategoriesCard(
                    title: "TOUR PACKAGES",
                    url: 'assets/images/tour.png',
                  ),
                  CategoriesCard(
                    title: "COMING SOON",
                    url: 'assets/images/logo.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
