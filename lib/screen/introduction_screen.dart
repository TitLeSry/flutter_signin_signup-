import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      
      title: 'What is Blue Archive?',
      body:
          'Blue Archive (ブルーアーカイブ) is a Gacha RPG mobile title developed by NEXON GAMES and published by Yostar. It was released in 04 February 2021.',
      footer: SizedBox(
        
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
      ),
    image: const CircleAvatar(
      radius: 100, 
      backgroundImage: AssetImage(
        '../../assets/images/Blue_Archive.jpg',
      ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 62, 147, 178),
        ),
        pageColor: Color.fromARGB(255, 124, 227, 255),
        bodyTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),      
      ),
    ),
    PageViewModel(
      title: 'Its Japanese Game? What About The Global version?',
      body:
          'The Global version is published by Nexon and was released on November 8th, 2021.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go"),

        ),
      ),
    image: const CircleAvatar(
      radius: 100, 
      backgroundImage: AssetImage(
        '../../assets/images/Blue_Archive2.jpg',
      ),
      ),      
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 182, 97, 107),
        ),
         pageColor: Color.fromARGB(255, 238, 130, 143),
         bodyTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),        
      ),
    ),
    PageViewModel(
      title: 'General Information',
      body:
          'Producer Kim Yong-ha (who made Qurare : MAGIC LIBRARY), new collective mobile game that was being developed under the name Project MX by a company called NEXON GAMES in Korea',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's Go"),
        ),
      ),
    image: const CircleAvatar(
      radius: 100, 
      backgroundImage: AssetImage(
        '../../assets/images/Kim.jpg',
      ),
    ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xFFA89D82),
        ),
        pageColor: Color(0xFFFFEEC8),
        bodyTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black, 
          ),      
      ),
    ),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        
        pages: pages,
        showSkipButton: true, 
        skip: const Text('Skip'),
        showDoneButton: true,
        done: const Text('Done'),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(
            context),
        curve: Curves.bounceOut,
        dotsDecorator: DotsDecorator(
          size: const Size(15, 15),
          color: Color.fromARGB(255, 220, 219, 219),
          activeColor: const Color.fromARGB(255, 189, 188, 188),
          activeSize: const Size.square(20),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          
          builder: (context) => HomeScreen(),
      ),
    );
  }
}
