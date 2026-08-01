import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Helper/Colors/MyColors.dart';
import 'package:zalan_portfolio/Helper/Responsive.dart';
import 'package:zalan_portfolio/Widgets/Screenshot.dart';

class CarStatusPage extends StatelessWidget {
  const CarStatusPage({super.key});

  // Screenshots hier eintragen: Datei in assets/carstatus/ ablegen,
  // in pubspec.yaml unter assets auflisten und hier ergänzen.
  static const List<ProjectScreenshot> screenshots = [
    ProjectScreenshot(
      image: "assets/carstatus/landing.png",
      caption: "Startseite mit Anmeldung und Registrierung",
    ),
    ProjectScreenshot(
      image: "assets/carstatus/login.png",
      caption: "Anmeldung für Mechaniker und Kunden",
    ),
    ProjectScreenshot(
      image: "assets/carstatus/ticketliste.png",
      caption: "Übersicht aller Tickets mit Fahrzeug und Status",
    ),
    ProjectScreenshot(
      image: "assets/carstatus/ticketerstellung.png",
      caption: "Anlegen eines neuen Tickets mit Aufgabenliste",
    ),
    ProjectScreenshot(
      image: "assets/carstatus/status.png",
      caption:
          "Ticket bearbeiten: Kundendaten, Fahrzeug und Status vom Eingang bis zur Abholung",
    ),
    ProjectScreenshot(
      image: "assets/carstatus/kundenansicht.png",
      caption: "Kundenansicht: alle eigenen Fahrzeuge auf einen Blick",
    ),
    ProjectScreenshot(
      image: "assets/carstatus/kundenauto.png",
      caption: "Der Kunde verfolgt den Fortschritt an seinem Fahrzeug",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 24 : 60,
              vertical: isMobile ? 30 : 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackToHome(),
                const Gap(40),
                Text(
                  "CarStatus",
                  style: TextStyle(
                    fontSize: isMobile ? 32 : 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Gap(10),
                Container(
                  width: 200,
                  height: 3,
                  color: Mycolors.primaryOrange,
                ),
                const Gap(24),
                Text(
                  "Eine Werkstatt-Lösung aus Android-App, REST-API und MSSQL-Datenbank, "
                  "über die Mechaniker und Kunden den Stand eines Fahrzeugs gemeinsam verfolgen können.",
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 20,
                    color: Colors.white70,
                    height: 1.6,
                  ),
                ),
                const Gap(60),
                Text(
                  "Screenshots",
                  style: TextStyle(
                    fontSize: isMobile ? 24 : 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Gap(24),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: screenshots
                      .map((shot) => ScreenshotCard(screenshot: shot))
                      .toList(),
                ),
                const Gap(60),
                Text(
                  "Über das Projekt",
                  style: TextStyle(
                    fontSize: isMobile ? 24 : 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Gap(24),
                const DetailBox(
                  title: "Architektur",
                  text:
                      "Das Projekt ist in drei Teile aufgeteilt: eine in Flutter geschriebene Android-App als Oberfläche, "
                      "eine REST-API in C#, die als einzige Schnittstelle zur Datenbank dient, und eine MSSQL-Datenbank für die Fahrzeug- und Nutzerdaten. "
                      "Die App spricht ausschließlich über die API mit der Datenbank, dadurch bleibt die Logik an einer Stelle gebündelt.",
                ),
                const Gap(20),
                const DetailBox(
                  title: "Technologien",
                  text:
                      "Frontend mit Flutter und Dart, Backend als REST-API mit C# und ASP.NET, Datenhaltung in MSSQL. "
                      "Für die Versionierung nutze ich Git und GitHub.",
                ),
                const Gap(20),
                const DetailBox(
                  title: "Herausforderungen",
                  text:
                      "Die größte Aufgabe war der saubere Schnitt zwischen App, API und Datenbank: "
                      "klar definierte Endpunkte, ein einheitliches Datenmodell und eine Oberfläche, "
                      "die auch für Kunden ohne technisches Vorwissen verständlich bleibt.",
                ),
                const Gap(60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BackToHome extends StatelessWidget {
  const BackToHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.arrow_back,
              color: Mycolors.primaryOrange,
            ),
            Gap(10),
            Text(
              "Zurück",
              style: TextStyle(
                fontSize: 16,
                color: Mycolors.primaryOrange,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailBox extends StatelessWidget {
  final String title;
  final String text;

  const DetailBox({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(isMobile ? 20 : 28),
      decoration: BoxDecoration(
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Mycolors.primaryOrange,
          width: 1.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 20 : 24,
              fontWeight: FontWeight.bold,
              color: Mycolors.primaryOrange,
            ),
          ),
          const Gap(16),
          Text(
            text,
            style: TextStyle(
              fontSize: isMobile ? 15 : 18,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
