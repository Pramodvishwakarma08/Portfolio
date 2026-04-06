import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      color: const Color(0xFF190B2D),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
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
          Row(
            children: [
              _navItem("Home", 0, controller),
              _navItem("Experience", 1, controller),
              _navItem("Skills", 2, controller),
              _navItem("Projects", 3, controller),
              _navItem("Contact", 4, controller),
            ],
          ),
        ],
      ),
    );
  }

  Widget _navItem(String title, int index, HomeController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: () => controller.changeIndex(index),
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: controller.selectedIndex.value == index
                      ? const Color(0xFF7127BA)
                      : Colors.white70,
                ),
              ),
              const SizedBox(height: 4),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 2,
                width: controller.selectedIndex.value == index ? 20 : 0,
                color: const Color(0xFF7127BA),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
