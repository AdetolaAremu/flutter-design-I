import 'package:flutter/material.dart';

class ExerciseHeadingCard extends StatelessWidget {
  final String heading;
  final String subHeading;
  const ExerciseHeadingCard(
      {Key? key, required this.heading, required this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(
                heading,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 99, 115, 158),
                ),
              ),
            ),
            Text(
              subHeading,
              style: const TextStyle(
                fontSize: 10,
              ),
            )
          ],
        ),
      ],
    );
  }
}
