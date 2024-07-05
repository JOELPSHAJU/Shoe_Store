import 'package:flutter/material.dart';
import 'package:food_shop_app_ui/Model/model.dart';
import 'package:food_shop_app_ui/Screen/listview_details_screen.dart';

class ItemsDetails extends StatelessWidget {
  ItemsDetails({super.key, required this.item});

  final Item item;

  final List<String> sizelist = [
    '6',
    '6.5',
    '7',
    '7.5',
    '8',
    '8.5',
    '9',
    '9.5'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 242, 242, 242),
                Color.fromARGB(255, 244, 244, 244),
                Color.fromARGB(255, 218, 218, 218),
                Color.fromARGB(255, 244, 244, 244)
              ])),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back_ios)),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'images/ll.png',
                            width: 25,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  height: 300,
                  child: Hero(
                    tag: item.imageUrl,
                    child: Image.asset(
                      item.imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 10),
                                child: Text(
                                  item.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0, top: 12),
                                child: Row(
                                  children: [
                                    starIcon(),
                                    starIcon(),
                                    starIcon(),
                                    starIcon(),
                                    Icon(
                                      Icons.star_border,
                                      color: Color.fromARGB(255, 242, 220, 23),
                                      size: 25,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item.description,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 115, 111, 111)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Size',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListviewDetailsScreen(
                              size: size, categories: sizelist),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Colors',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 120,
                            width: size.width,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: item.colors.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => ImageDialouge(
                                                image: item.colors[index],
                                              ));
                                    },
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                item.colors[index],
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '₹${item.price}/-',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 50,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Center(
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class starIcon extends StatelessWidget {
  const starIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Color.fromARGB(255, 242, 220, 23),
      size: 25,
    );
  }
}

class ImageDialouge extends StatelessWidget {
  final String image;
  const ImageDialouge({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      surfaceTintColor: Colors.black,
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
