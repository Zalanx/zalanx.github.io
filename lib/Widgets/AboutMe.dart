import 'package:flutter/material.dart';
import 'package:zalan_portfolio/Colors/MyColors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Text(
              'Über mich',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Mycolors.primaryOrange,
              ),
            ),
          ),
          Expanded(
              flex: 1,
            child: SizedBox(
                height: 400,
              child: VerticalDivider(
              color: Colors.white24,
                  thickness: 2,
                  indent: 40,
                  endIndent: 40,
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: Text(
              "Ich bin Zalan, mein Fokus liegt auf Backend-Entwicklung, gleichzeitig arbeite ich gerne im Frontend. Ich habe Freude daran, neue Technologien zu entdecken und mich kontinuierlich weiterzuentwickeln.",
              style: TextStyle(
                fontSize: 26,
                color: Colors.white70,
                height: 1.8, 
              ),
            ),
          ),
        ],
      ),
    );
  }
}