import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zalan_portfolio/Helper/Colors/MyColors.dart';

class ProjectScreenshot {
  final String image;
  final String caption;

  const ProjectScreenshot({
    required this.image,
    required this.caption,
  });
}

class ScreenshotCard extends StatelessWidget {
  final ProjectScreenshot screenshot;

  const ScreenshotCard({
    super.key,
    required this.screenshot,
  });

  void _openFullscreen(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black87,
      builder: (context) => FullscreenScreenshot(screenshot: screenshot),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double available = MediaQuery.sizeOf(context).width - 48;
    final double cardWidth = available < 300 ? available : 300;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _openFullscreen(context),
        child: Container(
          width: cardWidth,
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
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
                child: SizedBox(
                  height: 560,
                  width: double.infinity,
                  child: Image.asset(
                    screenshot.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const ScreenshotPlaceholder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  screenshot.caption,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScreenshotPlaceholder extends StatelessWidget {
  const ScreenshotPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0B0B0B),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_outlined,
              size: 48,
              color: Colors.white24,
            ),
            Gap(12),
            Text(
              "Screenshot folgt",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullscreenScreenshot extends StatelessWidget {
  final ProjectScreenshot screenshot;

  const FullscreenScreenshot({
    super.key,
    required this.screenshot,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                screenshot.image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const SizedBox(
                  height: 420,
                  width: 300,
                  child: ScreenshotPlaceholder(),
                ),
              ),
            ),
          ),
          const Gap(20),
          Text(
            screenshot.caption,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const Gap(20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Mycolors.primaryOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Schließen",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
