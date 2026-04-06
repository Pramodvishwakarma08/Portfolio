import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final RxInt selectedIndex = 0.obs;
  bool _isScrollingToSection = false;

  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    if (_isScrollingToSection) return;

    final keys = [homeKey, aboutKey, skillsKey, projectsKey, contactKey];
    for (int i = 0; i < keys.length; i++) {
      final context = keys[i].currentContext;
      if (context != null) {
        final renderBox = context.findRenderObject() as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero).dy;
        
        // If the section is near the top of the viewport
        if (position >= -200 && position <= 200) {
          selectedIndex.value = i;
          break;
        }
      }
    }
  }

  void scrollToSection(GlobalKey key) async {
    final context = key.currentContext;
    if (context != null) {
      _isScrollingToSection = true;
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      _isScrollingToSection = false;
    }
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        scrollToSection(homeKey);
        break;
      case 1:
        scrollToSection(aboutKey);
        break;
      case 2:
        scrollToSection(skillsKey);
        break;
      case 3:
        scrollToSection(projectsKey);
        break;
      case 4:
        scrollToSection(contactKey);
        break;
    }
  }
}
