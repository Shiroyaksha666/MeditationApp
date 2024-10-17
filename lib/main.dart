import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant/consts.dart';
import 'package:meditation_app/widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  'assets/images/undraw_pilates_gpdb.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 52,
                      width: 52,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'سارا عزیز برای مدیتیشن\n آماده ای؟',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
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
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.95,
                      crossAxisCount: 2,
                      children: const <Widget>[
                        GridMaker(
                          topic: 'رژیم پیشنهادی',
                          imagepath: 'assets/icons/Hamburger.svg',
                        ),
                        GridMaker(
                          topic: 'نرمش',
                          imagepath: 'assets/icons/Excrecises.svg',
                        ),
                        GridMaker(
                          topic: 'مدیتیشن',
                          imagepath: 'assets/icons/Meditation.svg',
                        ),
                        GridMaker(
                          topic: 'یوگا',
                          imagepath: 'assets/icons/yoga.svg',
                        ),
                      ],
                    ),
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
