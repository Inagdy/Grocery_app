import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widget/adding_remove_counter.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/product_row_details.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetails extends StatefulWidget {
  final bool onDotClicked;

  const ProductDetails({super.key, this.onDotClicked = true});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final int mainColorBackground = 0xff53B175;
  final List<String> images = const [
    'assets/images/apple.png',
    'assets/images/apple.png',
    'assets/images/apple.png',
  ];
  int activeIndex = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 413.6,
              height: 371.44,
              child: Stack(
                children: [
                  SizedBox(width: double.infinity, height: double.infinity),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 371.44,
                      autoPlay: true,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      onPageChanged: (i, reason) {
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
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                              color: Color(0xffF2F3F2),
                              image: DecorationImage(
                                image: Image.asset(
                                  "assests/images/apple1.png",
                                ).image,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Positioned(
                    bottom: 7.05,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: images.length,
                        effect: ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: const Color(0xff53B175),
                          dotWidth: 5.03,
                          dotHeight: 5.38,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30.5),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Naturel Red Apple',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.5),
                  const Text(
                    '1kg, Price',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  Row(
                    children: [
                      AddingRemoveCounter(),
                      const SizedBox(width: 16),
                      const Text(
                        '\$4.99',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.7),
                  const Divider(),
                  ProductRowDetails(
                    textdata: "Product Detail",
                    description:
                        'Apples Are Nutritious. Apples May Be Good For Weight Loss.\n'
                        'Apples May Be Good For Your Heart. As Part Of A Healthful\n'
                        'And Varied Diet.', 
                  ),
                  const Divider(),
                  ProductRowDetails(textdata: "Nutritions", description:""),
                  const Divider(),
                  ProductRowDetails(textdata: "Review", description:"", starCount: 5,),


                  CustomButton(
                    text: 'Add To Basket',
                    background: mainColorBackground.toString(),
                    hasIcon: false,
                    iData: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
