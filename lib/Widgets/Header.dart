import 'package:flutter/material.dart';
import 'package:zalan_portfolio/Helper/Colors/MyColors.dart';
import 'package:zalan_portfolio/Helper/Responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    final double fontSize = isMobile ? 30 : 48;

    return SafeArea(
      child: SizedBox(
        height: isMobile ? 140 : 200,
        child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Hi, ich bin ',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Zalán.',
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