import 'package:flutter/material.dart';
import 'package:meditation_app/constant/consts.dart';
import 'package:meditation_app/widgets/widgets.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'مدیتیشن',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    '20 دقیقه آموزش',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را \nمیتوانید خیلی افزایش دهید و عمر طولانی‌تری\n داشته باشید',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: size.width * 0.4,
                      child: const SearchBarMaker(),
                    ),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 30,
                    children: <Widget>[
                      BuildSeseionCard(
                        sesionNumber: 'درس 01',
                        isDone: true,
                        press: () {},
                      ),
                      const BuildSeseionCard(
                        sesionNumber: 'درس 02',
                      ),
                      const BuildSeseionCard(
                        sesionNumber: 'درس 03',
                      ),
                      const BuildSeseionCard(
                        sesionNumber: 'درس 04',
                      ),
                      const BuildSeseionCard(
                        sesionNumber: 'درس 05',
                      ),
                      const BuildSeseionCard(
                        sesionNumber: 'درس 06',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
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
                  padding: const EdgeInsets.all(16.0),
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
