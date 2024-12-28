import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureSlider extends StatelessWidget {
  const FeatureSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFECFDF3),
      ),
      padding: const EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Positive Vibes",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF027A48),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Boost your mood with positive vibes",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF101828),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/play_btn.png",
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "10 mins",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF667085),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Image
          const SizedBox(width: 16),
          Image.asset(
            "assets/images/walkingthedog.png",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
