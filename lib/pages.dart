import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> list = ['assets/images/OFFER.png'];
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
              sliderFunctionality(context),
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
              // CategoriesCard(url: 'assets/images/car.png', title: 'title')
            ],
          ),
        ),
      )),
    );
  }

  CarouselSlider sliderFunctionality(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
      ),
      items: list
          .map((item) => Container(
                // margin: EdgeInsets.symmetric(),
                height: 200,
                width: MediaQuery.of(context).size.width / 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Image(
                  image: AssetImage(item),
                  fit: BoxFit.fitWidth,
                ),
              ))
          .toList(),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.url, required this.title});
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
        // elevation: ,
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

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class MyRides extends StatelessWidget {
  const MyRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10.0,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'My Ride',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text('You can now track your ride.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000).withOpacity(0.4),
                    )),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Card(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(
                          FontAwesomeIcons.locationPinLock,
                          size: 15,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  const Text('Destination Details',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xff000000).withOpacity(0.4),
                      )),
                ],
              ),
              IntrinsicHeight(
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: VerticalDivider(
                          color: Colors.black26,
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        // padding: EdgeInsets.only(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.red,
                        ),
                        height: 150,
                        // width: MediaQuery.sizeOf(context).width / 2,
                        child: const Text("Hya mula"),
                      ))
                    ]),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Card(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(
                          FontAwesomeIcons.carSide,
                          size: 15,
                          color: Color(0xffEDD500),
                        ),
                      ),
                    ),
                  ),
                  Text('Ride Information',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xff000000).withOpacity(0.4),
                      )),
                ],
              ),
              IntrinsicHeight(
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: VerticalDivider(
                          color: Colors.black26,
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        // padding: EdgeInsets.only(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.red,
                        ),
                        height: 150,
                        // width: MediaQuery.sizeOf(context).width / 2,
                        child: const Text("Hya mula"),
                      ))
                    ]),
              ),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Card(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(
                          FontAwesomeIcons.solidUser,
                          size: 15,
                          color: Color(0xffEDD500),
                        ),
                      ),
                    ),
                  ),
                  Text('Driver Information',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xff000000).withOpacity(0.4),
                      )),
                ],
              ),
              Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: VerticalDivider(
                        color: Colors.black26,
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      // padding: EdgeInsets.only(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.red,
                      ),
                      height: 150,
                      // width: MediaQuery.sizeOf(context).width / 2,
                      child: const Text("Hya mula"),
                    ))
                  ]),

              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Theme.of(context).primaryColor),
                  child: const Text(
                    'View in Map',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
