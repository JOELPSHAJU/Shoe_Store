import 'package:flutter/material.dart';

class Item {
  bool myItems;

  String title;
  String description;
  Color color;
  Color bgColor;
  List<String> colors;
  String price;
  String oldprice;
  String lb;
  String imageUrl;
  int height;

  Item({
    required this.myItems,
    required this.title,
    required this.colors,
    required this.oldprice,
    required this.description,
    required this.color,
    required this.bgColor,
    required this.price,
    required this.lb,
    required this.imageUrl,
    required this.height,
  });
}

List<Item> foodShopItems() {
  return <Item>[
    Item(
        myItems: true,
        title: "Nike Air Force 1'07",
        description:
            "The radiance lives on in the 1, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.",
        color: const Color.fromARGB(255, 205, 198, 199),
        bgColor: const Color.fromARGB(255, 224, 224, 224),
        price: '7,495',
        lb: "Mens Sneaker's",
        imageUrl: 'images/nike_prev_ui.png',
        height: 250,
        colors: [
          "images/1/color1.png",
          "images/1/color2.png",
          "images/1/color5.webp"
        ],
        oldprice: '8,950'),
    Item(
        oldprice: ' 11,895',
        myItems: false,
        title: 'Nike Go FlyEase',
        colors: [
          "images/2/1.png",
          "images/2/2.png",
          "images/2/3.png",
          "images/2/4.png",
          "images/2/5.png",
          "images/2/6.png"
        ],
        description:
            "Ditch the laces and get outside. These kicks feature Nike's revolutionary FlyEase technology, making on-and-off a breeze. ",
        color: const Color.fromARGB(255, 185, 255, 172),
        bgColor: const Color.fromARGB(255, 114, 206, 169),
        price: ' 11,297',
        lb: 'Ease On/Off Shoes',
        imageUrl: 'images/2/main.png',
        height: 200),
    Item(
        oldprice: '9,550',
        myItems: true,
        title: 'Air Jordan 1 Low',
        description:
            "Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that's familiar yet always fresh.",
        color: const Color(0xFFEBB1E4),
        bgColor: const Color(0xFFFFEEFE),
        price: '8,995',
        lb: "Men's Shoes",
        imageUrl: 'images/3/main.png',
        colors: [
          "images/3/1.jpeg",
          "images/3/2.jpeg",
        ],
        height: 250),
    Item(
      oldprice: '15,295',
      myItems: false,
      title: 'Jumpman MVP',
      description:
          "We took elements from the AJ6, 7 and 8, making them into a completely new shoe that celebrates MJ's first 3-peat championship run.",
      color: const Color(0xFFBAB9F5),
      bgColor: const Color(0xFFE4E5FE),
      price: '14,527',
      lb: "Men's Shoes",
      imageUrl: 'images/4/main.png',
      colors: [
        "images/4/1.png",
        "images/4/2.png",
        "images/4/3.png",
        "images/4/4.png",
        "images/4/5.png",
      ],
      height: 190,
    ),
    Item(
        oldprice: '8,730',
        myItems: true,
        title: 'Converse',
        description:
            "We took elements from the AJ6, 7 and 8, making them into a completely new shoe that celebrates MJ's first 3-peat championship run.",
        color: const Color(0xFFFFB25F),
        bgColor: const Color(0xFFFFE08E),
        price: '1,300',
        colors: [
          "images/1/color1.png",
          "images/1/color2.png",
          "images/1/color5.webp"
        ],
        lb: 'Mens HighTop',
        imageUrl: 'images/5.png',
        height: 250),
    Item(
        oldprice: '8,999',
        myItems: false,
        title: 'Nike Low 1',
        colors: [
          "images/1/color1.png",
          "images/1/color2.png",
          "images/1/color5.webp"
        ],
        description:
            "Ditch the laces and get outside. These kicks feature Nike's revolutionary FlyEase technology, making on-and-off a breeze. ",
        color: const Color(0xFFF0A8AF),
        bgColor: const Color(0xFFFFE3E6),
        price: '8,769',
        lb: "Men's Sneakers",
        imageUrl: 'images/6.png',
        height: 200),
    Item(
      oldprice: '12,350',
      myItems: true,
      title: 'Nike High .3',
      description:
          "Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that's familiar yet always fresh.",
      color: const Color(0xFFFDD284),
      bgColor: const Color(0xFFFFFBD8),
      price: '11,999',
      colors: [
        "images/1/color1.png",
        "images/1/color2.png",
        "images/1/color5.webp"
      ],
      lb: "Men's Casuals",
      imageUrl: 'images/7.png',
      height: 250,
    ),
    Item(
        oldprice: '3,450',
        myItems: false,
        title: 'Lara Lows',
        description:
            "Ditch the laces and get outside. These kicks feature Nike's revolutionary FlyEase technology, making on-and-off a breeze. ",
        color: const Color(0xFFFDD284),
        bgColor: const Color(0xFFFFFBD8),
        price: '2,299',
        colors: [
          "images/1/color1.png",
          "images/1/color2.png",
          "images/1/color5.webp"
        ],
        lb: 'Running Shoes',
        imageUrl: 'images/8.png',
        height: 200),
  ];
}
