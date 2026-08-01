import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Helper/Responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    final Widget title = Text(
      "Über mich",
      textAlign: isMobile ? TextAlign.center : TextAlign.left,
      style: TextStyle(
        fontSize: isMobile ? 30 : 38,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );

    final Widget body = Column(
      crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          "Ich bin ausgelernter Fachinformatiker für Anwendungsentwicklung und bringe praktische Erfahrung in der Backend- und Frontend-Entwicklung mit, unter anderem mit C#, ASP.NET, REST APIs und Flutter. In meiner Freizeit beschäftige ich mich hin und wieder mit der Softwareentwicklung.",
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: isMobile ? 18 : 28,
            color: Colors.white,
            height: 1.6,
          ),
        ),
        Gap(isMobile ? 24 : 40),
        Text(
          "Mein Fokus liegt auf der Backend-Entwicklung, gleichzeitig arbeite ich gerne im Frontend. "
          "Ich habe Freude daran, neue Technologien zu entdecken und mich kontinuierlich weiterzuentwickeln.",
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: isMobile ? 18 : 28,
            color: Colors.white,
            height: 1.6,
          ),
        ),
      ],
    );

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 60,
        vertical: isMobile ? 40 : 50,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/aboutMeBackground.gif'),
          fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: isMobile
          ? Column(
              children: [
                title,
                const Gap(30),
                body,
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: title,
                  ),
                ),
                const Gap(30),
                const SizedBox(
                  height: 300,
                  child: VerticalDivider(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                const Gap(50),
                Expanded(
                  flex: 2,
                  child: body,
                ),
              ],
            ),
    );
  }
}