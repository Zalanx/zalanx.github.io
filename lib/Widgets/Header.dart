import 'package:flutter/material.dart';
import 'package:zalan_portfolio/Colors/MyColors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 200,
        child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Hi, ich bin ',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Zalan.',
                      style: TextStyle(
                        color: Mycolors.primaryOrange, 
                      ),
                    ),
                  ],
                ),
              ),
          ),
      ),
    );
  }
}