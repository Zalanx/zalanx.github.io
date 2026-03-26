import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: const BoxDecoration(
        color: Color(0xFF0B0B0B),
        border: Border(
          top: BorderSide(
            color: Color(0x22FFFFFF),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Zalan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const Gap(10),

          const Text(
            'Softwareentwickler',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),

          const Gap(20),

          // 🔗 Links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FooterLink(text: 'GitHub', url: 'https://github.com/Zalanx'),
              Gap(20),
              FooterLink(text: 'Email', url: 'mailto:zalan.bader@icloud.com'),
            ],
          ),

          const Gap(30),

          Container(
            width: 200,
            height: 1,
            color: Colors.white24,
          ),

          const Gap(20),

          const Text(
            '© 2026 Zalan Bader. Alle Rechte vorbehalten.',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class FooterLink extends StatelessWidget {
  final String text;
  final String url;

  const FooterLink({
    super.key,
    required this.text,
    required this.url,
  });

  Future<void> openUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => openUrl(url),
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFFFF7A00),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}