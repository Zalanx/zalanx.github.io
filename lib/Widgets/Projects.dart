import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zalan_portfolio/Helper/Colors/MyColors.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Private Projekte",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Gap(10),
          Container(
            width: 200,
            height: 3,
            color: const Color(0xFFFF7A00),
          ),
          const Gap(40),
          ProjectCard(
            title: "CarStatus",
            description:
                "CarStatus ist ein funktionierendes Projekt zur Verwaltung und Anzeige von Fahrzeugdaten in einer Werkstatt. Es dient eine Oberfläche für Mechaniker/Kunden die gemeinsam komunizieren können. "
                "Das Projekt besteht aus Backend/Api, Frontend/Android-App und einer Datenbank in MSSQL. "
                "Dabei liegt mein Fokus auf einer klaren Struktur, sauberem Code und einer übersichtlichen Benutzeroberfläche.",
            technologies: const [
              "Flutter",
              "Dart",
              "C#",
              "API",
              "MSSQL",
              "Database"
            ],
            onGithubTap: () => _openUrl("https://github.com/Zalanx"),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;
  final VoidCallback onGithubTap;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
    required this.onGithubTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(18),
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
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF7A00),
            ),
          ),
          const Gap(20),
          Text(
            description,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
          const Gap(24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: technologies
                .map(
                  (tech) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0B0B0B),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFFF7A00),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      tech,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const Gap(28),
          Row(
            children: [
              ProjectButton(
                text: 'GitHub',
                onTap: onGithubTap,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isOutlined;

  const ProjectButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: isOutlined ? Colors.transparent : const Color(0xFFFF7A00),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xFFFF7A00),
              width: 1.2,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isOutlined ? const Color(0xFFFF7A00) : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}