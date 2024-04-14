import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: SvgPicture.asset('assets/icons/logo.svg'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/8f82/d419/bb2640049345a16ed347b22286404585?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RBF9jWjYMAe7FJoDGd8l1K6b4qBZP9AnmNAPvsa2IUQnVN-maWop6TMZVm4MjlzTb1PyuP5fytNIzpMsnAmKKr8stz5dIN40rrjsYZDVBQMoeFtvd1SMum0-G5BadB5V~VaOND1L8EFyqsgIJ6cy40Yc94x07b7DXK-E7hWGo~oyJrgxFT~T2MpdRld0R0dW~OJcR~AT2tLpbeAAKbvYJpPLlBk0k~w4lnxEIaE~gJOsQJkXRNrr4z5WyghdPyI~N6Kp~KgsAgmzAjN9Dm1zGmnweKMqCwH2zE8FCoX7LrCrD2f8J0yJCt42fswkRPsZlGar6oq0lfxmdoPk6Q9olw__'),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
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

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

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
