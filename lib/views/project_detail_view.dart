import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/project_model.dart';

class ProjectDetailView extends StatelessWidget {
  final ProjectModel project;

  const ProjectDetailView({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF190B2D),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Text(
          project.title,
          style: GoogleFonts.plusJakartaSans(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background Glows to match theme
          Positioned(right: -100, top: 100, child: _backgroundGlow(400, 400)),
          Positioned(left: -100, bottom: 100, child: _backgroundGlow(400, 400)),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              bool isMobile =
                  sizingInformation.isMobile || sizingInformation.isTablet;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 20 : 100,
                        vertical: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title and Links
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectableText(
                                      project.title,
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: isMobile ? 32 : 48,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 4,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF7127BA),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (!isMobile) _buildLinksRow(),
                            ],
                          ),
                          if (isMobile) const SizedBox(height: 20),
                          if (isMobile) _buildLinksRow(),
                          const SizedBox(height: 40),

                          // Project Screenshots Grid (More compact and themed)
                          if (project.screenshots.isNotEmpty) ...[
                            SelectableText(
                              "App Preview",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 25),
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: isMobile
                                        ? 3
                                        : 5, // 3 for mobile, 5 for desktop
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15,
                                    childAspectRatio: 0.5,
                                  ),
                              itemCount: project.screenshots.length,
                              itemBuilder: (context, index) {
                                return _buildScreenshotCard(
                                  project.screenshots[index],
                                  project.isAsset,
                                );
                              },
                            ),
                            const SizedBox(height: 60),
                          ],

                          // Description Section
                          _buildSectionTitle("Project Overview"),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: const Color(0xFF190B2D),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(
                                  0xFF7127BA,
                                ).withValues(alpha: 0.2),
                              ),
                            ),
                            child: SelectableText(
                              project.description,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70,
                                height: 1.6,
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),

                          // Two Column layout for Tech and Features on Desktop
                          if (!isMobile)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildSectionTitle("Key Features"),
                                      const SizedBox(height: 20),
                                      ...project.keyFeatures.map(
                                        (feature) => _buildFeatureItem(feature),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 50),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildSectionTitle("Tech Stack"),
                                      const SizedBox(height: 20),
                                      Wrap(
                                        spacing: 12,
                                        runSpacing: 12,
                                        children: project.techStack
                                            .map((tech) => _buildTechChip(tech))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          else ...[
                            _buildSectionTitle("Tech Stack"),
                            const SizedBox(height: 20),
                            Wrap(
                              spacing: 12,
                              runSpacing: 12,
                              children: project.techStack
                                  .map((tech) => _buildTechChip(tech))
                                  .toList(),
                            ),
                            const SizedBox(height: 40),
                            _buildSectionTitle("Key Features"),
                            const SizedBox(height: 20),
                            ...project.keyFeatures.map(
                              (feature) => _buildFeatureItem(feature),
                            ),
                          ],
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return SelectableText(
      title,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white,
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
          colors: [Color(0x33763CAC), Color(0x00320E85)],
        ),
        shape: OvalBorder(),
      ),
    );
  }

  Widget _buildLinksRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (project.androidLink != null)
          _linkButton(Icons.android, "Android", project.androidLink!),
        const SizedBox(width: 15),
        if (project.iosLink != null)
          _linkButton(Icons.apple, "iOS", project.iosLink!),
      ],
    );
  }

  Widget _linkButton(IconData icon, String label, String url) {
    return ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(url)),
      icon: Icon(icon, size: 20, color: Colors.white),
      label: Text(label, style: const TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF7127BA),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _buildScreenshotCard(String url, bool isAsset) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF190B2D), // Dark background for the card
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFF7127BA).withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          image: isAsset ? AssetImage(url) as ImageProvider : NetworkImage(url),
          fit: BoxFit.contain, // Contain to show full image without cropping
        ),
      ),
    );
  }

  Widget _buildTechChip(String tech) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF190B2D),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFF7127BA).withValues(alpha: 0.5),
        ),
      ),
      child: Text(
        tech,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.star, color: Color(0xFF7127BA), size: 20),
          const SizedBox(width: 15),
          Expanded(
            child: SelectableText(
              feature,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
