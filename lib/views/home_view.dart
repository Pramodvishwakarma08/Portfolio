import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../controllers/home_controller.dart';
import '../widgets/navbar.dart';
import '../widgets/drawer.dart';
import 'sections/home_section.dart';
import 'sections/about_section.dart';
import 'sections/skills_section.dart';
import 'sections/projects_section.dart';
import 'sections/contact_section.dart';
import 'sections/footer_section.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: sizingInformation.isMobile || sizingInformation.isTablet
              ? AppBar(
                  backgroundColor: const Color(0xFF190B2D),
                  elevation: 0,
                  iconTheme: const IconThemeData(color: Colors.white),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Port",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: "folio",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF7127BA),
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: Navbar(),
                ),
          drawer: sizingInformation.isMobile || sizingInformation.isTablet
              ? const MobileDrawer()
              : null,
          body: Stack(
            children: [
              // Background Radial Glows
              Positioned(
                left: -200,
                top: 200,
                child: _backgroundGlow(600, 600),
              ),
              Positioned(
                right: -300,
                top: 800,
                child: _backgroundGlow(700, 700),
              ),
              Positioned(
                left: 200,
                bottom: -200,
                child: _backgroundGlow(800, 800),
              ),
              SingleChildScrollView(
                controller: controller.scrollController,
                child: Column(
                  children: [
                    HomeSection(key: controller.homeKey),
                    AboutSection(key: controller.aboutKey),
                    SkillsSection(key: controller.skillsKey),
                    ProjectsSection(key: controller.projectsKey),
                    ContactSection(key: controller.contactKey),
                    const FooterSection(),
                  ],
                ),
              ),
              if (!sizingInformation.isMobile && !sizingInformation.isTablet)
                Positioned(
                  left: 40,
                  bottom: 0,
                  child: Column(
                    children: [
                      _socialSidebarIcon(
                        FontAwesomeIcons.github,
                        "https://github.com/Pramodvishwakarma08",
                      ),
                      const SizedBox(height: 20),
                      _socialSidebarIcon(
                        FontAwesomeIcons.linkedin,
                        "https://www.linkedin.com/in/pramod-vishwakarma-a743b7247?utm_source=share_via&utm_content=profile&utm_medium=member_android",
                      ),
                      const SizedBox(height: 20),
                      _socialSidebarIcon(
                        FontAwesomeIcons.instagram,
                        "https://www.instagram.com/pramodvishwakarma08/",
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: 1,
                        height: 100,
                        color: const Color(0xFF7127BA).withValues(alpha: 0.5),
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

  Widget _socialSidebarIcon(IconData icon, String url) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      child: FaIcon(icon, color: Colors.white70, size: 22),
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
            Color(0x66763CAC), // 40% opacity
            Color(0x00320E85), // 0% opacity
          ],
        ),
        shape: OvalBorder(),
      ),
    );
  }
}
