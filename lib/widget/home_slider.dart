import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}
  int activeIndex = 0;

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 114.99,
            autoPlay: true,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            onPageChanged: (i, r) {
              setState(() {
                activeIndex = i;
              });
            },
          ),
          items: images
              .map(
                (imagePath) => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Color(0xffF2F3F2)),
                    image: DecorationImage(
                      image: Image.asset(imagePath).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 7.05,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: images.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.grey,
              activeDotColor: Color(0xff53B175),
              dotWidth: 5.03,
              dotHeight: 5.38,
            ),
          ),
        ),
      ],
    );
  }

  List<String> images = [
    "assests/images/slide1.jpg",
    "assests/images/slide2.jpg",
    "assests/images/slide3.jpg",
    "assests/images/slide4.jpg",
    "assests/images/slide5.jpg",
    "assests/images/slide7.jpg",
    "assests/images/slide8.jpg",
    "assests/images/slide9.jpg",
    "assests/images/slide10.jpg",
  ];
}
