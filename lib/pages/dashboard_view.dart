import 'package:designflutter/util/emoticon_face.dart';
import 'package:designflutter/util/exercise_bottom_cards.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: ''),
      ]),
      backgroundColor: const Color(0xFF277DBD),
      appBar: AppBar(
        title: const Text('Dashboard'),
        // backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      'Hi, Jared!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 13),
                      child: Text(
                        '23 Aug, 2023',
                        style: TextStyle(
                            color: Color.fromARGB(255, 196, 189, 189),
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF408DC4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(11),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintStyle: const TextStyle(color: Colors.white),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.white,
                fillColor: const Color(0xFF408DC4),
                contentPadding: const EdgeInsets.symmetric(vertical: 7),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'How do you feel?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  EmoticonFace(icon: '😔'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Badly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  EmoticonFace(icon: '😊'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Fine',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  EmoticonFace(icon: '😄'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Well',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  EmoticonFace(icon: '😃'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Excellent',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 99, 115, 158),
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Color.fromARGB(255, 99, 115, 158),
                        ),
                      ],
                    ),
                  ),
                  ExerciseBottomCard(
                    bgcolor: Color(0xFFFC8403),
                    cardMainText: 'Speaking Skills',
                    cardSubText: '8 exercises',
                    cardIcon: Icons.favorite,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ExerciseBottomCard(
                    bgcolor: Color(0xFF277DBD),
                    cardMainText: 'Reading Speed',
                    cardSubText: '8 exercises',
                    cardIcon: Icons.person,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ExerciseBottomCard(
                    bgcolor: Color(0xFF277DBD),
                    cardMainText: 'Walking Skills',
                    cardSubText: '24 exercises',
                    cardIcon: Icons.directions_walk,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
