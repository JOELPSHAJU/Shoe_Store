// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:food_shop_app_ui/Model/model.dart';
import 'package:food_shop_app_ui/Screen/appbar_container.dart';
import 'package:food_shop_app_ui/Screen/categorylist.dart';
import 'package:food_shop_app_ui/Screen/item_detail.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({super.key});

  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  final List<String> imgList = [
    'images/add1.jpg',
    'images/add2.jpg',
    'images/add3.jpg',
    'images/add4.jpg',
    'images/add5.jpg',
    'images/add6.png',
  ];
  final List<String> categories = [
    'All',
    'Running',
    'Sneakers',
    'Casual',
    'Formal',
    'Sandals',
    'FlipFlop'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/bg.jpg'))),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: Image.asset(
            'images/nikelogo.png',
            width: 70,
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 50,
          bottom: PreferredSize(
              preferredSize: Size(size.width, 62),
              child: AppbarContainer(size: size)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Image.asset(
                'images/ll1.png',
                width: 23,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Image.asset(
                'images/ll.png',
                width: 23,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset(
                'images/ll2.png',
                width: 23,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: imgList
                    .map((item) => Card(
                          clipBehavior: Clip.antiAlias,
                          child: ClipRect(
                            child: Center(
                                child: Image.asset(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ),
                        ))
                    .toList(),
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 3.1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: AnimatedSmoothIndicator(
                    activeIndex: _current,
                    count: imgList.length,
                    effect: const ExpandingDotsEffect(
                      paintStyle: PaintingStyle.stroke,
                      dotHeight: 8.0,
                      dotWidth: 8.0,
                      activeDotColor: Colors.black,
                      strokeWidth: 2,
                      dotColor: Colors.grey,
                    ),
                    onDotClicked: (index) {
                      _controller.animateToPage(index);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Listview(
                size: size,
                categories: categories,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                    height: 1000,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: foodShopItems().length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            0.75, // Adjust this value to control the aspect ratio
                      ),
                      itemBuilder: (context, index) {
                        final item = foodShopItems()[index];
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ItemsDetails(item: item),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 195, 193, 193),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(13),
                                              child: Hero(
                                                tag: item.imageUrl,
                                                child: Image.asset(
                                                  item.imageUrl,
                                                  fit: BoxFit.fitWidth,
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 5,
                                              left: 5,
                                              child: Container(
                                                width: 46,
                                                height: 17,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Center(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Color.fromARGB(
                                                            255, 242, 220, 23),
                                                        size: 17,
                                                      ),
                                                      Text(
                                                        '4.5',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 13),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 1),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.title,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            item.lb,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 149, 149, 149)),
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "₹${item.price}",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "₹${item.oldprice}",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      decorationColor:
                                                          Colors.black,
                                                      decorationThickness: 2,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 14.0, bottom: 8),
                                                child: Container(
                                                  width: 32,
                                                  height: 32,
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color
                                                                .fromARGB(255,
                                                                194, 191, 191)
                                                            .withOpacity(0.5),
                                                        spreadRadius: 5,
                                                        blurRadius: 7,
                                                        offset:
                                                            const Offset(0, 3),
                                                      ),
                                                    ],
                                                  ),
                                                  child: const Icon(
                                                    Icons.favorite,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
