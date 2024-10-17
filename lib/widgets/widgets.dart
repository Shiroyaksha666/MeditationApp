import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridMaker extends StatelessWidget {
  final String imagepath;
  final String topic;
  const GridMaker({
    super.key,
    required this.imagepath,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          const Spacer(),
          SvgPicture.asset(imagepath),
          const Spacer(),
          Text(
            topic,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
