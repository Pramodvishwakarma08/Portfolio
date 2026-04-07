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
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Glow background behind name
                    FadeIn(
                      duration: const Duration(seconds: 2),
                      child: _backgroundGlow(
                        isMobile ? 300 : 600,
                        isMobile ? 100 : 200,
                      ),
                    ),
                    FadeInDown(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SelectableText(
                              "Pramod ",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: isMobile ? 32 : 80,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: -1,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: ZoomIn(
                                delay: const Duration(milliseconds: 500),
                                child: Text(
                                  "🚀",
                                  style: TextStyle(
                                    fontSize: isMobile ? 24 : 50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                FadeInUp(
                  delay: const Duration(milliseconds: 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isMobile) _buildLine(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SelectableText(
                          "App Developer (Android, iOS, and Web)",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: isMobile ? 14 : 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      if (!isMobile) _buildLine(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                FadeInUp(
                  delay: const Duration(milliseconds: 600),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      ElevatedButton.icon(
                        onPressed: _launchWhatsApp,
                        icon: const FaIcon(FontAwesomeIcons.whatsapp, size: 18),
                        label: const Text("Hire Me"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7127BA),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 18,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 10,
                          shadowColor: const Color(0xFF7127BA).withOpacity(0.5),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {
                          // TODO: Replace with actual CV link
                          launchUrl(Uri.parse("https://your-resume-link.com"));
                        },
                        icon: const Icon(Icons.download, size: 20),
                        label: const Text("Download CV"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 18,
                          ),
                          side: const BorderSide(color: Color(0xFF7127BA)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
            Colors.blue.withOpacity(0.5),
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
