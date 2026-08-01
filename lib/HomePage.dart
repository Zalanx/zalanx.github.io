import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Widgets/AboutMe.dart';
import 'package:zalan_portfolio/Widgets/Animation.dart';
import 'package:zalan_portfolio/Widgets/Footer.dart';
import 'package:zalan_portfolio/Widgets/Header.dart';
import 'package:zalan_portfolio/Widgets/PersonalSection.dart';
import 'package:zalan_portfolio/Widgets/Projects.dart';
import 'package:zalan_portfolio/Widgets/Skills.dart';
import 'package:zalan_portfolio/Helper/Responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    final double sectionGap = isMobile ? 40 : 80;

    final divider = Divider(
      color: Colors.white24,
      thickness: 2,
      indent: isMobile ? 24 : 40,
      endIndent: isMobile ? 24 : 40,
    );

    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(30),
            const Header(),
            Gap(sectionGap),
            const AnimationWidget(),
            Gap(isMobile ? 60 : 100),
            divider,
            const Gap(20),
            const AboutMe(),
            const Gap(20),
            divider,
            const Gap(20),
            const Skills(),
            const Gap(40),
            const Projects(),
            const Gap(40),
            const PersonalSection(),
            Gap(sectionGap),
            const Footer(),
          ],
        ),
      ),
    );
  }
}