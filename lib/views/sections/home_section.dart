import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  Future<void> _launchWhatsApp() async {
    final Uri url = Uri.parse("https://wa.me/919111177049");
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        bool isMobile =
            sizingInformation.isMobile || sizingInformation.isTablet;
        return Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: double.infinity,
          color: Colors.transparent, // Background handled by stack
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  child: SelectableText(
                    "Hello! I Am",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: isMobile ? 18 : 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                FadeInDown(
                  delay: const Duration(milliseconds: 100),
                  child: SelectableText(
                    "Pramod Vishwakarma",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: isMobile ? 36 : 60,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF7127BA),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                FadeInLeft(
                  child: SelectionArea(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Judges a book\nby its ",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isMobile ? 36 : 50,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "cover",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isMobile ? 36 : 50,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF7127BA),
                            ),
                          ),
                          TextSpan(
                            text: "...",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isMobile ? 36 : 50,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FadeInUp(
                  child: SelectableText(
                    "Because if the cover does not impress you what else can?",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: isMobile ? 12 : 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                FadeInUp(
                  delay: const Duration(milliseconds: 200),
                  child: SelectableText(
                    "Flutter & Backend Developer",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: isMobile ? 24 : 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                FadeInUp(
                  delay: const Duration(milliseconds: 400),
                  child: SizedBox(
                    width: isMobile ? double.infinity : 700,
                    child: SelectableText(
                      "Dedicated and skilled Flutter & Backend Developer (Supabase, Firebase, Node.js) with 3+ years of experience in creating high-performance, engaging apps with clean code architecture.",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: isMobile ? 16 : 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                FadeInUp(
                  delay: const Duration(milliseconds: 600),
                  child: ElevatedButton.icon(
                    onPressed: _launchWhatsApp,
                    icon: const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Chat on WhatsApp",
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF25D366),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
