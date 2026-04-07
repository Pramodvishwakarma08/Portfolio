import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import '../../models/project_model.dart';
import '../project_detail_view.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
            vertical: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selected Projects",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 32 : 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 30,
                runSpacing: 30,
                children: [
                  _projectCard(
                    ProjectModel(
                      title: "Coupoint.",
                      description:
                          "Discount Coupon Marketplace Platform connecting users with local businesses.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoin_main.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase",
                        "GetX",
                        "QR Code Integration",
                      ],
                      keyFeatures: [
                        "3-tier architecture: Mobile App, Vendor Web Dashboard, and Admin Web Panel",
                        "Secure QR code-based redemption system with real-time validation",
                        "Comprehensive coupon management with discount types and validity periods",
                        "User wallet system with coupon tracking and push notifications",
                      ],
                      screenshots: [
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_2.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_3.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_4.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_5.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_6.png",
                      ],
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "LeadFire Pro",
                      description:
                          "Field Operations Management System (Agent Portal) for streamlined observation reporting.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFireMain.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase",
                        "Google Maps API",
                        "GetX",
                      ],
                      keyFeatures: [
                        "Private enterprise app with secure Firebase Authentication",
                        "Observation submission workflow with Google Maps integration",
                        "Zone assignment system with Firebase Remote Config",
                        "Multi-platform CRM integration (HubSpot, Lob API)",
                      ],
                      screenshots: [
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFire05.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFire03.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFire06.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFire02.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFire04.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/leadFire01.png",
                      ],
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "College Thriver",
                      description:
                          "Cloud-based personalized college guidance system for underserved students.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/College_Thriver_main.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase",
                        "GetX",
                        "Socket.io",
                        "Google Maps",
                      ],
                      keyFeatures: [
                        "Personalized college and career planning GPS",
                        "Financial incentives based on student activity in the app",
                        "Real-time chat with mentors using Socket.io",
                        "Personalized college guidance system for educational success",
                      ],
                      screenshots: [
                        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/8f/02/b5/8f02b5d9-8fca-e292-488b-0ff5a2007496/df07f2cc-1c7d-4b1e-913d-573c101bd467_114.png/230x499bb.webp",
                        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/73/d8/a1/73d8a19a-8e35-d83e-38a5-a95caa5c4c28/d21cd074-ac37-4386-910c-2fb87eb48cd9_116.png/230x499bb.webp",
                        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/b2/a9/56/b2a95602-9c1a-5e9e-eeb1-531a265a73ad/46559668-c48d-4ef4-bf78-4c041e0b9b6e_115.png/230x499bb.webp",
                        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/ae/d3/17/aed31702-6982-eb55-56bd-61ea03ab3b3a/b1978133-4eab-4c01-ba92-de160c9c8917_117.png/230x499bb.webp",
                        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource211/v4/53/90/64/539064ba-75f0-0ddd-1eb7-a99a4ad1adb1/30b67475-aa8f-469f-a5af-9e13f16adba1_iPad_U00282_U0029.jpg/528x704bb.webp",
                        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/79/3d/ee/793deee8-0d5c-b3a8-a1df-042514cc7a7c/fb05ec74-efd1-43c0-937e-fb151e61d304_iPad_U00284_U0029.jpg/528x704bb.webp",
                      ],
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "Secure Point",
                      description:
                          "Mobile app for reporting lost/stolen items like phones, bikes, and cars.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Secure_Point_main.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase Messaging",
                        "Deep Linking",
                        "Socket.io",
                        "Google Maps",
                      ],
                      keyFeatures: [
                        "Integrated user authentication",
                        "Verification platform for potential buyers to check stolen items",
                        "Real-time alerts and location tracking",
                        "Recovery assistance for lost items",
                      ],
                      screenshots: [
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/secure_point_1.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/secure_point_2.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/secure_point_3.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/secure_point_4.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/secure_point_5.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/secure_point_6.png",
                      ],
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "Frenly",
                      description:
                          "Social media app with real-time messaging, profiles, and post sharing.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_main.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase Messaging",
                        "Socket.io",
                        "GetX",
                        "Deep Linking",
                      ],
                      keyFeatures: [
                        "Real-time chatting and active status",
                        "User profiles with following/followers",
                        "Post and blog upload functionality",
                        "Deep linking for post sharing",
                      ],
                      screenshots: [
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_1.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_2.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_3.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_4.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_5.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/frenly_6.png",
                      ],
                    ),
                    isMobile,
                  ),
                  /*
                  _projectCard(
                    ProjectModel(
                      title: "Data Tracker",
                      description:
                          "Car race track data capture app for road temperature, UV levels, etc.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "GetX",
                        "Stripe SDK",
                        "Firebase Messaging",
                        "REST API",
                      ],
                      keyFeatures: [
                        "Real-time data collection and monitoring",
                        "Captures road temperature, UV levels, and custom metrics",
                        "Tablet, Mobile, and iOS support",
                        "Payment integration using Stripe",
                      ],
                      screenshots: [
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_2.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_3.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_4.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_5.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_6.png",
                      ],
                    ),
                    isMobile,
                  ),
                  */
                  _projectCard(
                    ProjectModel(
                      title: "Kalibrate",
                      description:
                          "Neuroscience-backed audio-affirmation platform for mental well-being.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate1.png",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "AI/ML",
                        "Eleven Labs SDK",
                        "Firebase",
                        "GetX",
                      ],
                      keyFeatures: [
                        "AI-powered affirmation system with 3 specialized modes",
                        "Eleven Labs SDK integration for voice customization",
                        "Dynamic Life Area Satisfaction Survey with visualizations",
                        "Gamification features: daily streaks, analytics, and milestones",
                      ],
                      screenshots: [
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate1.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate2.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate3.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate4.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate5.png",
                        "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/Kalibrate6.png",
                      ],
                    ),
                    isMobile,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _projectCard(ProjectModel project, bool isMobile) {
    return ProjectCard(project: project, isMobile: isMobile);
  }
}

class ProjectCard extends StatefulWidget {
  final ProjectModel project;
  final bool isMobile;

  const ProjectCard({super.key, required this.project, required this.isMobile});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: widget.isMobile ? double.infinity : 350,
        transform: isHovered
            ? (Matrix4.identity()..translate(0, -10))
            : Matrix4.identity(),
        decoration: ShapeDecoration(
          color: const Color(0xFF2B0B3A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: isHovered ? const Color(0xFF7127BA) : Colors.transparent,
              width: 2,
            ),
          ),
          shadows: [
            BoxShadow(
              color: isHovered
                  ? const Color(0xFF7127BA).withValues(alpha: 0.4)
                  : Colors.black.withValues(alpha: 0.3),
              blurRadius: isHovered ? 30 : 20,
              offset: isHovered ? const Offset(0, 15) : const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: SizedBox(
                height: 220,
                width: double.infinity,
                child: widget.project.isAsset
                    ? Image.asset(widget.project.imageUrl, fit: BoxFit.cover)
                    : CachedNetworkImage(
                        imageUrl: widget.project.imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: const Color(0xFF190B2D),
                          highlightColor: const Color(0xFF2B0B3A),
                          child: Container(color: Colors.white),
                        ),
                        errorWidget: (context, url, error) => const Center(
                          child: Icon(Icons.error, color: Colors.white),
                        ),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    widget.project.title,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SelectableText(
                    widget.project.description,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Get.to(
                          () => ProjectDetailView(project: widget.project),
                        ),
                        child: Text(
                          "VIEW PROJECT →",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF7127BA),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          if (widget.project.androidLink != null)
                            IconButton(
                              onPressed: () => launchUrl(
                                Uri.parse(widget.project.androidLink!),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.android,
                                size: 18,
                                color: Colors.white70,
                              ),
                            ),
                          if (widget.project.iosLink != null)
                            IconButton(
                              onPressed: () =>
                                  launchUrl(Uri.parse(widget.project.iosLink!)),
                              icon: const FaIcon(
                                FontAwesomeIcons.apple,
                                size: 18,
                                color: Colors.white70,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
