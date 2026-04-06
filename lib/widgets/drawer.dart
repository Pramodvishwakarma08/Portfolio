import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF190B2D)),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Port",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    TextSpan(
                      text: "folio",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF7127BA),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _drawerItem("Home", Icons.home, 0, controller),
          _drawerItem("Experience", Icons.work, 1, controller),
          _drawerItem("Skills", Icons.psychology, 2, controller),
          _drawerItem("Projects", Icons.code, 3, controller),
          _drawerItem("Contact", Icons.contact_mail, 4, controller),
        ],
      ),
    );
  }

  Widget _drawerItem(
    String title,
    IconData icon,
    int index,
    HomeController controller,
  ) {
    return Obx(
      () => ListTile(
        leading: Icon(
          icon,
          color: controller.selectedIndex.value == index
              ? const Color(0xFF7127BA)
              : Colors.white70,
        ),
        title: Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: controller.selectedIndex.value == index
                ? const Color(0xFF7127BA)
                : Colors.white70,
          ),
        ),
        onTap: () {
          controller.changeIndex(index);
          Get.back();
        },
      ),
    );
  }
}
