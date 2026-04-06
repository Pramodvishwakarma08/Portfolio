import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
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
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
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
                      title: "College Thriver",
                      description:
                          "Cloud-based personalized college guidance system for underserved students.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
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
                      title: "Secure Point",
                      description:
                          "Mobile app for reporting lost/stolen items like phones, bikes, and cars.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
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
                      title: "Frenly",
                      description:
                          "Social media app with real-time messaging, profiles, and post sharing.",
                      imageUrl:
                          "https://lsscqzslznlnflfstbxa.supabase.co/storage/v1/object/public/persnal_use/coupoint_1.png",
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
    return Container(
      width: isMobile ? double.infinity : 450,
      decoration: ShapeDecoration(
        color: const Color(0xFF2B0B3A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: project.isAsset
                    ? AssetImage(project.imageUrl) as ImageProvider
                    : NetworkImage(project.imageUrl),
                fit: BoxFit.cover,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
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
                  project.title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                SelectableText(
                  project.description,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () =>
                      Get.to(() => ProjectDetailView(project: project)),
                  child: Text(
                    "VIEW PROJECT →",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF7127BA),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
