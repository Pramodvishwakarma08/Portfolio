import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF190B2D),
        border: Border(top: BorderSide(color: Color(0xFF7127BA), width: 0.1)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(
                FontAwesomeIcons.github,
                "https://github.com/Pramodvishwakarma08",
              ),
              const SizedBox(width: 25),
              _socialIcon(
                FontAwesomeIcons.linkedin,
                "https://www.linkedin.com/in/pramod-vishwakarma-a743b7247?utm_source=share_via&utm_content=profile&utm_medium=member_android",
              ),
              const SizedBox(width: 25),
              _socialIcon(
                FontAwesomeIcons.instagram,
                "https://www.instagram.com/pramodvishwakarma08/",
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            "Built with Flutter by Pramod Vishwakarma",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              color: Colors.white60,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "© 2024 All Rights Reserved",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              color: Colors.white30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon, String url) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      child: FaIcon(icon, color: Colors.white70, size: 22),
    );
  }
}
