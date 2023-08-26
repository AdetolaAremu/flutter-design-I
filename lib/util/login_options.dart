import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  final String image;
  final String text;
  final double imagePadding;
  final double textPadding;
  final double imageSize;

  const LoginOptions({
    Key? key,
    required this.image,
    required this.text,
    required this.imagePadding,
    required this.textPadding,
    required this.imageSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 3.0,
        shadowColor: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: imagePadding),
                    child: Image.asset(image, height: imageSize),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: textPadding),
                    child: Text(
                      text,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class LoginOptionsRight extends StatelessWidget {
  final String image;
  final String text;
  final double imagePadding;
  final double textPadding;
  final double imageSize;

  const LoginOptionsRight({
    Key? key,
    required this.image,
    required this.text,
    required this.imagePadding,
    required this.textPadding,
    required this.imageSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 3.0,
        shadowColor: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: imagePadding),
                    child: Image.asset(image, height: imageSize),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: textPadding),
                    child: Text(
                      text,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
