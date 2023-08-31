import 'package:flutter/material.dart';

class ExerciseBottomCard extends StatelessWidget {
  final String cardMainText;
  final String cardSubText;
  final Color bgcolor;
  final IconData cardIcon;

  const ExerciseBottomCard(
      {Key? key,
      required this.cardMainText,
      required this.cardSubText,
      required this.bgcolor,
      required this.cardIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Row(
                  children: [
                    ClipRRect(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          cardIcon,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                cardMainText,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 99, 115, 158),
                                ),
                              ),
                            ),
                            Text(
                              cardSubText,
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ]),
              const Column(
                children: [
                  Icon(Icons.more_horiz),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
