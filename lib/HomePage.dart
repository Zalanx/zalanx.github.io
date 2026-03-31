import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Widgets/AboutMe.dart';
import 'package:zalan_portfolio/Widgets/Animation.dart';
import 'package:zalan_portfolio/Widgets/Footer.dart';
import 'package:zalan_portfolio/Widgets/Header.dart';
import 'package:zalan_portfolio/Widgets/PersonalSection.dart';
import 'package:zalan_portfolio/Widgets/Projects.dart';
import 'package:zalan_portfolio/Widgets/Skills.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Gap(30),
            Header(),
            Gap(80),
            AnimationWidget(),
            Gap(100),
            Divider(
              color: Colors.white24,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
            Gap(20),
            AboutMe(),
            Gap(20),
            Divider(
              color: Colors.white24,
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
            Gap(20),
            Skills(),
            Gap(40),
            Projects(),
            Gap(40),
            PersonalSection(),
            Gap(80),
            Footer(),
          ],
        ),
      ),
    );
  }
}