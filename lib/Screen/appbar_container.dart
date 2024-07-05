import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 62,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 10),
          child: TextFormField(
            style: const TextStyle(fontWeight: FontWeight.w600),
            keyboardType: TextInputType.multiline,
            maxLines: 1,
            minLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(10)),
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 173, 171, 171))),
                hintText: "Search Product",
                contentPadding: const EdgeInsets.all(15)),
          ),
        ),
      ),
    );
  }
}