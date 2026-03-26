import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Colors/MyColors.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Ich interessiere mich hauptsächlich für',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white70,
                  ),
                ),
                Gap(40),
                SizedBox(
                  height: 50,
                  child: DefaultTextStyle(
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Mycolors.primaryOrange,
                    ),
                    child: AnimatedTextKit( 
                      repeatForever: true,
                      pause: Duration(milliseconds: 800),
                      animatedTexts: [
                        FadeAnimatedText('C# Backend-Entwicklung'),
                        FadeAnimatedText('Frontend / App-Entwicklung'),
                        FadeAnimatedText('API Entwicklung'),
                        FadeAnimatedText('Sauberen Code'),
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