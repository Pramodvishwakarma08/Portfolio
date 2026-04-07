import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
                "Contact",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 32 : 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: isMobile ? double.infinity : 800,
                child: SelectableText(
                  "I'm currently looking to join a cross-functional team that values improving people's lives through accessible design. or have a project in mind? Let's connect.\n\npramod00106@gmail.com | +91 9111177049\nKalindi Gold Diamond Sector, Indore",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: isMobile ? 16 : 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                width: isMobile ? double.infinity : 600,
                padding: EdgeInsets.all(isMobile ? 20 : 40),
                decoration: BoxDecoration(
                  color: const Color(0xFF190B2D),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF7127BA).withOpacity(0.3),
                  ),
                ),
                child: Column(
                  children: [
                    _contactField("Name", "Your Name"),
                    const SizedBox(height: 20),
                    _contactField("Email", "Your Email"),
                    const SizedBox(height: 20),
                    _contactField("Message", "Your Message", maxLines: 4),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.snackbar(
                            "Message Sent",
                            "Thank you for reaching out! I'll get back to you soon.",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: const Color(0xFF7127BA),
                            colorText: Colors.white,
                            margin: const EdgeInsets.all(20),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7127BA),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Send Message",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _contactField(String label, String hint, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          maxLines: maxLines,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              color: Colors.white30,
            ),
            fillColor: const Color(0xFF11071F),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFF7127BA)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: const Color(0xFF7127BA).withOpacity(0.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFF7127BA)),
            ),
          ),
        ),
      ],
    );
  }
}
