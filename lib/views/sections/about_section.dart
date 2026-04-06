import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.isMobile || sizingInformation.isTablet;
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 100,
            vertical: 80,
          ),
          color: Colors.transparent,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Work Experience",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 32 : 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              _experienceCard(
                "Flutter & Backend Developer",
                "MMF Infotech Technologies Pvt Ltd",
                "01/2025 – Present | Working on high-performance mobile applications and backend integrations using Node.js and Firebase.",
                const Color(0xFF1877F2),
                isMobile,
              ),
              const SizedBox(height: 30),
              _experienceCard(
                "Flutter Developer",
                "Creative Thoughts Informatics Pvt. Ltd.",
                "03/2023 – 01/2025 | Indore, India | Developed and maintained complex mobile apps with a focus on user experience.",
                const Color(0xFF4E228D),
                isMobile,
              ),
              const SizedBox(height: 30),
              _experienceCard(
                "Flutter Developer (Internship)",
                "Alphawizz Technologies Pvt. Ltd.",
                "09/2022 – 01/2023 | Indore, India | Gained hands-on experience in Flutter development and API integrations.",
                const Color(0xFF7127BA),
                isMobile,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _experienceCard(
    String role,
    String company,
    String description,
    Color accentColor,
    bool isMobile,
  ) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-0.09, 0.50),
          end: const Alignment(1.00, 4.06),
          colors: [
            const Color(0xFF130328),
            const Color(0xFF250F42),
            const Color(0xFF37116D),
            const Color(0xFF261045),
            const Color(0xFF190634),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: accentColor.withOpacity(0.3), width: 1),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 8,
            width: double.infinity,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isMobile)
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: accentColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.work, color: accentColor, size: 30),
                  ),
                if (!isMobile) const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        role,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: isMobile ? 20 : 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      SelectableText(
                        company,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: isMobile ? 14 : 16,
                          fontWeight: FontWeight.w600,
                          color: accentColor,
                        ),
                      ),
                      const SizedBox(height: 15),
                      SelectableText(
                        description,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: isMobile ? 14 : 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        ),
                      ),
                    ],
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
