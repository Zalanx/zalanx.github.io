import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Widgets/AboutMe.dart';
import 'package:zalan_portfolio/Widgets/Animation.dart';
import 'package:zalan_portfolio/Widgets/Header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Gap(80),
            Header(),
            Gap(80),
            AnimationWidget(),
            Gap(40),
            Divider(
              color: Colors.white24,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
            AboutMe(),
          ],
        ),
      ),
    );
  }
}