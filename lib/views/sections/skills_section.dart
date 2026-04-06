import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
              SelectableText(
                "Technical Skills",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 32 : 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              SelectionArea(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    _skillChip("Flutter", isMobile),
                    _skillChip("Dart", isMobile),
                    _skillChip("GetX", isMobile),
                    _skillChip("Bloc", isMobile),
                    _skillChip("Node.js", isMobile),
                    _skillChip("Firebase", isMobile),
                    _skillChip("Supabase", isMobile),
                    _skillChip("Git/Github", isMobile),
                    _skillChip("CI-CD Pipeline", isMobile),
                    _skillChip("Stripe", isMobile),
                    _skillChip("Google Maps API", isMobile),
                    _skillChip("Socket.io", isMobile),
                    _skillChip("Dependency Injection (GetIt)", isMobile),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SelectableText(
                "Specialized Tools & Techniques",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 24 : 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              _techCategory(
                "Backend Services",
                "Node.js (REST API), Firebase (Firestore, Auth, Functions), Supabase (PostgreSQL, Realtime)",
                isMobile,
              ),
              _techCategory(
                "Firebase Services",
                "Crashlytics, Analytics, Cloud Functions, App Distribution",
                isMobile,
              ),
              _techCategory(
                "Routing",
                "GetX Route, GoRouter, Material Route",
                isMobile,
              ),
              _techCategory(
                "Storage",
                "Shared Preferences, Get Storage",
                isMobile,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _skillChip(String label, bool isMobile) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF190B2D),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xFF7127BA).withOpacity(0.5)),
      ),
      child: Text(
        label,
        style: GoogleFonts.plusJakartaSans(
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _techCategory(String title, String items, bool isMobile) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: Color(0xFF7127BA),
            size: 24,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 16 : 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  items,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white60,
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
