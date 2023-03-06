import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:justiserve/models/svg_image.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _buildCarousel(),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      items: const [
        SvgImage(imageLocation: "images/crying_woman.svg"),
        SvgImage(imageLocation: "images/manwithscale.svg"),
        SvgImage(imageLocation: "images/endsars.svg"),
      ],
      options: CarouselOptions(),
    );
  }
}
