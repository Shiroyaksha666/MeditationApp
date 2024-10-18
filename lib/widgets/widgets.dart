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

class NavigationIconMaker extends StatelessWidget {
  final String title;
  final String svgsrc;
  final VoidCallback? press;
  final bool isActive;
  const NavigationIconMaker({
    super.key,
    required this.svgsrc,
    required this.title,
    this.press,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SvgPicture.asset(svgsrc),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
        ),
      ],
    );
  }
}

class SearchBarMaker extends StatelessWidget {
  const SearchBarMaker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: '...جستجو کنید ',
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintStyle: const TextStyle(
            fontSize: 18,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class BuildSeseionCard extends StatelessWidget {
  final String sesionNumber;
  final bool isDone;
  final VoidCallback? press;
  const BuildSeseionCard({
    super.key,
    this.isDone = false,
    required this.sesionNumber,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        sesionNumber,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: isDone ? kBlueColor : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: kBlueColor)),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
