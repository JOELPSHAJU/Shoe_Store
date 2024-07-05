import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({
    super.key,
    required this.size, required this.categories,
  });
  final Size size;
  final List<String> categories;
  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: widget.size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:widget. categories.length,
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
                decoration: BoxDecoration(
                    color: index == currentIndex ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: index == currentIndex
                            ? Colors.transparent
                            : Colors.grey)),
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
