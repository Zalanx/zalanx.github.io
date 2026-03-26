import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Colors/MyColors.dart';

class PersonalSection extends StatelessWidget {
  const PersonalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Persönliches",
            style: TextStyle(
              fontSize: 36,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: PersonalBox(
                  title: "Sprachen",
                  items: [
                    "Deutsch",
                    "Englisch",
                    "Ungarisch",
                  ],
                ),
              ),
              const Gap(40),
              const Expanded(
                child: PersonalBox(
                  title: "Zertifikate",
                  items: [
                    "Erasmus+ Auslandspraktikum (3 Wochen, Dublin)",
                  ],
                ),
              ),
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
                  color: Color(0xFFFF7A00),
                ),
              ),
              const Gap(20),
        
              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_right,
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