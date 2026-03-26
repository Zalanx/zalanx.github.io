import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Colors/MyColors.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            child: const Text(
              'Skills',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(12),
          Container(
            width: 160,
            height: 3,
            color: Mycolors.primaryOrange,
          ),
          const Gap(40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              SkillCard(
                title: "Backend",
                skills: ["C#", "ASP.NET", "REST APIs", "SQL"],
              ),
              SkillCard(
                title: "Frontend",
                skills: ["Flutter", "Dart", "UI Design"],
              ),
              SkillCard(
                title: "Tools",
                skills: ["Git", "GitHub", "VS Code", "Visual Studio"],
              ),
              SkillCard(title: "Programmiersprachen", skills: ["C#", "Dart", "Html", "CSS"]),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillCard({
    super.key,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Mycolors.primaryOrange,
          width: 1.2,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Mycolors.primaryOrange,
            ),
          ),
          const Gap(18),
          ...skills.map(
            (skill) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.circle,
                    size: 8,
                    color: Colors.white70,
                  ),
                  const Gap(10),
                  Text(
                    skill,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}