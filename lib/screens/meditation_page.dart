import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant/consts.dart';
import 'package:meditation_app/widgets/widgets.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavigationIconMaker(
              title: 'امروز',
              svgsrc: 'assets/icons/calendar.svg',
              isActive: false,
            ),
            NavigationIconMaker(
              title: 'تمرینات',
              svgsrc: 'assets/icons/gym.svg',
              isActive: true,
            ),
            NavigationIconMaker(
              title: 'تنظیمات',
              svgsrc: 'assets/icons/Settings.svg',
              isActive: false,
            ),
          ],
        ),
      ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'پیشنهاد ما',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(10),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/Lock.svg'),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'یوگا پیشرفته',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'پیشرفته تر از قبل تمرین کنید',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg')
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
