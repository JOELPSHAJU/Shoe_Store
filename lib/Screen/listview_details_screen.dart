import 'package:flutter/material.dart';

class ListviewDetailsScreen extends StatefulWidget {
  const ListviewDetailsScreen({
    super.key,
    required this.size,
    required this.categories,
  });
  final Size size;
  final List<String> categories;
  @override
  State<ListviewDetailsScreen> createState() => _ListviewDetailsScreenState();
}

class _ListviewDetailsScreenState extends State<ListviewDetailsScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: widget.size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 54,
                height: 50,
                decoration: BoxDecoration(
                    color: index == currentIndex ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: index == currentIndex
                            ? Colors.transparent
                            : const Color.fromARGB(255, 167, 165, 165))),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8, right: 15, left: 15),
                  child: Text(
                    widget.categories[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: index == currentIndex
                            ? Colors.white
                            : Colors.black),
                  ),
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
