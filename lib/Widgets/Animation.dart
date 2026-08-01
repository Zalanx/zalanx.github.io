import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Helper/Colors/MyColors.dart';
import 'package:zalan_portfolio/Helper/Responsive.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Ich interessiere mich hauptsächlich für',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 22 : 32,
                    color: Colors.white70,
                  ),
                ),
                const Gap(40),
                SizedBox(
                  height: isMobile ? 70 : 50,
                  child: DefaultTextStyle(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 26 : 42,
                      fontWeight: FontWeight.bold,
                      color: Mycolors.primaryOrange,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(milliseconds: 800),
                      animatedTexts: [
                        FadeAnimatedText('C# Backend-Entwicklung'),
                        FadeAnimatedText('Frontend / App-Entwicklung'),
                        FadeAnimatedText('API Entwicklung'),
                        FadeAnimatedText('Sauberen Code'),
                        FadeAnimatedText('Lernen & Wachstum'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}