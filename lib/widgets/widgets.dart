import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant/consts.dart';

class GridMaker extends StatelessWidget {
  final String imagepath;
  final String topic;
  final VoidCallback? pressbutton;
  const GridMaker({
    super.key,
    required this.imagepath,
    required this.topic,
    this.pressbutton,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, 17),
              spreadRadius: -23,
              blurRadius: 17,
              color: kShadowColor)
        ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: pressbutton,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
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
            ),
          ),
        ),
      ),
    );
  }
}
