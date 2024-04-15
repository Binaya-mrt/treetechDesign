import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    super.key,
    required this.list,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
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
