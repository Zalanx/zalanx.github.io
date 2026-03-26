import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/aboutMeBackground.gif'),
          fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Über mich",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Gap(30),
          SizedBox(
            height: 300,
            child: VerticalDivider(
              width: 2,
              color: Colors.white,
            ),
          ),
          const Gap(50),
          const Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  "Ich bin 19 Jahre alt und mache eine Ausbildung zum Fachinformatiker für Anwendungsentwicklung. In meiner Freizeit beschäftige ich mich hin und wieder mit der Softwareentwicklung.",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    height: 1.6,
                  ),
                ),
                Gap(40),
                Text(
                  "Mein Fokus liegt auf der Backend-Entwicklung, gleichzeitig arbeite ich gerne im Frontend. "
                  "Ich habe Freude daran, neue Technologien zu entdecken und mich kontinuierlich weiterzuentwickeln.",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}