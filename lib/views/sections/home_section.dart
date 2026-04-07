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
          width: double.infinity,
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile
                ? 25
                : MediaQuery.of(context).size.width * 0.12,
            vertical: isMobile ? 60 : 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top Section: Avatar and Headline
              isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildAvatarWithName(isMobile),
                        const SizedBox(height: 50), // More space on mobile
                        _buildHeadline(isMobile),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _buildAvatarWithName(isMobile),
                        const SizedBox(width: 40),
                        Expanded(child: _buildHeadline(isMobile)),
                      ],
                    ),

              const SizedBox(height: 60),

              // Middle Section: Role and Company
              _buildRoleSection(isMobile),

              const SizedBox(height: 30),

              // Bottom Section: Description
              _buildDescription(isMobile),

              const SizedBox(height: 40),

              // Stats Row
              _buildStatsRow(isMobile),

              const SizedBox(height: 50),

              // Action Buttons (Resume & WhatsApp)
              _buildActionButtons(isMobile),
            ],
          ),
        );
      },
    );
  }

  Widget _buildActionButtons(bool isMobile) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [_buildResumeButton(isMobile), _buildWhatsAppButton(isMobile)],
    );
  }

  Widget _buildStatsRow(bool isMobile) {
    return Wrap(
      spacing: isMobile ? 30 : 60,
      runSpacing: 20,
      children: [
        _buildStatItem("3+", "Years experience", isMobile),
        _buildStatItem("12+", "Apps shipped", isMobile),
        _buildStatItem("3", "Companies", isMobile),
      ],
    );
  }

  Widget _buildStatItem(String count, String label, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          count,
          style: GoogleFonts.plusJakartaSans(
            fontSize: isMobile ? 28 : 36,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF7127BA),
          ),
        ),
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: isMobile ? 12 : 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  Widget _buildWhatsAppButton(bool isMobile) {
    return ElevatedButton.icon(
      onPressed: _launchWhatsApp,
      icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
      label: Text(
        "WhatsApp Me",
        style: GoogleFonts.plusJakartaSans(
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF25D366), // WhatsApp Green
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 30,
          vertical: isMobile ? 15 : 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _buildResumeButton(bool isMobile) {
    return ElevatedButton.icon(
      onPressed: () {
        // Replace with your actual resume PDF link
        launchUrl(Uri.parse("https://your-resume-link.pdf"));
      },
      icon: const Icon(Icons.download, color: Colors.white),
      label: Text(
        "Download Resume",
        style: GoogleFonts.plusJakartaSans(
          fontSize: isMobile ? 14 : 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF7127BA),
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 30,
          vertical: isMobile ? 15 : 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _buildAvatarWithName(bool isMobile) {
    return SizedBox(
      height: isMobile ? 200 : 350,
      width: isMobile ? 200 : 350,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Purple Glow behind Avatar
          Center(
            child: _backgroundGlow(isMobile ? 200 : 400, isMobile ? 200 : 400),
          ),
          // Avatar/Memoji
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/image_1.png",
              height: isMobile ? 150 : 280,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Container(
                height: isMobile ? 150 : 280,
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.person,
                  size: isMobile ? 80 : 150,
                  color: Colors.white24,
                ),
              ),
            ),
          ),
          // Name and Arrow PNG Tag
          Positioned(
            top: isMobile ? -20 : -10,
            right: isMobile ? -100 : -180,
            child: FadeInRight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Arrow image first
                  Image.asset(
                    "assets/images/arrow.png",
                    width: isMobile ? 40 : 60,
                    height: isMobile ? 40 : 60,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const SizedBox.shrink(),
                  ),
                  const SizedBox(width: 15), // Space between arrow and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "Hello! I Am ",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isMobile ? 12 : 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Pramod Vishwakarma",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: isMobile ? 12 : 18,
                              color: const Color(0xFF7127BA),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      // Open to work badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.green.withValues(alpha: 0.5),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "Open to opportunities",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: isMobile ? 8 : 10,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeadline(bool isMobile) {
    double mainFontSize = isMobile ? 36 : 64;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "A Developer who turns ideas into apps",
          style: GoogleFonts.preahvihear(
            fontSize: isMobile ? 14 : 17,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.underline,
            letterSpacing: 0.34,
          ),
        ),
        const SizedBox(height: 10),
        // Line 1: Judges a book
        Text(
          "Judges a book",
          style: GoogleFonts.plusJakartaSans(
            fontSize: mainFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.1,
          ),
        ),
        // Line 2: by its cover...
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            Text(
              "by its ",
              style: GoogleFonts.plusJakartaSans(
                fontSize: mainFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.1,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 15 : 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF7127BA), width: 2),
                borderRadius: const BorderRadius.all(
                  Radius.elliptical(100, 50),
                ),
              ),
              child: Text(
                "cover",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: mainFontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF7127BA),
                ),
              ),
            ),
            Text(
              "...",
              style: GoogleFonts.plusJakartaSans(
                fontSize: mainFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Line 3: Subtext
        Text(
          "Because if the cover does not impress you what else can?",
          style: GoogleFonts.preahvihear(
            fontSize: isMobile ? 10 : 11,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.22,
          ),
        ),
      ],
    );
  }

  Widget _buildRoleSection(bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "I'm a Flutter Developer.",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 28 : 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "|",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 28 : 48,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              "Currently, I'm a Flutter Developer at ",
              style: GoogleFonts.plusJakartaSans(
                fontSize: isMobile ? 14 : 18,
                color: Colors.white70,
              ),
            ),
            const Icon(Icons.business, color: Color(0xFF7127BA), size: 20),
            const SizedBox(width: 8),
            Text(
              "MMF Infotech Technologies Pvt Ltd,",
              style: GoogleFonts.plusJakartaSans(
                fontSize: isMobile ? 14 : 18,
                color: const Color(0xFF7127BA),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription(bool isMobile) {
    return SizedBox(
      width: isMobile ? double.infinity : 850,
      child: Text(
        "Hi, I'm a self-taught Flutter Developer with over 3 years of hands-on experience in building modern, cross-platform mobile and web applications.\n\nCurrently working at MMF Infotech Technologies Pvt Ltd, I specialize in creating elegant, responsive, and user-centric digital products that strike the perfect balance between stunning design and smooth functionality.\n\nPassionate about clean code, beautiful UI/UX, and delivering solutions that users truly love.",
        style: GoogleFonts.plusJakartaSans(
          fontSize: isMobile ? 15 : 18,
          color: Colors.white70,
          height: 1.6,
        ),
      ),
    );
  }

  Widget _buildLine() {
    return Container(
      width: 80,
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Colors.blue.withValues(alpha: 0.5),
            Colors.transparent,
          ],
        ),
      ),
    );
  }

  Widget _backgroundGlow(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: const ShapeDecoration(
        gradient: RadialGradient(
          center: Alignment(0.5, 0.5),
          radius: 0.5,
          colors: [
            Color(0x66763CAC), // More opacity for home screen glow
            Color(0x22320E85),
            Color(0x00000000),
          ],
        ),
        shape: OvalBorder(),
      ),
    );
  }
}
