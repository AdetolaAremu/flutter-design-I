import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String icon;
  const EmoticonFace({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF408DC4),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        icon,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}

class DynamicEmoticonFace extends StatelessWidget {
  final String icon;
  const DynamicEmoticonFace({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        icon,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
