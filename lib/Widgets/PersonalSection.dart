import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Helper/Colors/MyColors.dart';
import 'package:zalan_portfolio/Helper/Responsive.dart';

class PersonalSection extends StatelessWidget {
  const PersonalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    const languagesBox = PersonalBox(
      title: "Sprachen",
      items: [
        "Deutsch",
        "Englisch",
        "Ungarisch",
      ],
    );

    const certificatesBox = PersonalBox(
      title: "Zertifikate",
      items: [
        "Erasmus+ Auslandspraktikum (3 Wochen, Dublin)",
      ],
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 60,
        vertical: isMobile ? 50 : 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Persönliches",
            style: TextStyle(
              fontSize: isMobile ? 28 : 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Gap(10),
          Container(
          width: 250,
          height: 2,
          color: Mycolors.primaryOrange,
          ),
          const Gap(40),
          isMobile
              ? const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    languagesBox,
                    Gap(24),
                    certificatesBox,
                  ],
                )
              : const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: languagesBox),
                    Gap(40),
                    Expanded(child: certificatesBox),
                  ],
                ),
        ],
      ),
    );
  }
}

class PersonalBox extends StatelessWidget {
  final String title;
  final List<String> items;

  const PersonalBox({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF141414),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Mycolors.primaryOrange,
              width: 1,
            ),
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
              const Gap(20),
        
              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white70,
                      ),
                      const Gap(10),
                      Expanded(
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}