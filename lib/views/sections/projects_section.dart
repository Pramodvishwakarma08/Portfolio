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
                "Featured Projects",
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
                          "https://play-lh.googleusercontent.com/pcXE0UI0g07lPirpL4q_ni9ECImZWPHNWtCvXLSr7nf_45Ep2nRIGKhl8nOQmcOUKl_R_IE4fck6UgW4Q9BK3g=w2560-h1440-rw",
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
                        "https://play-lh.googleusercontent.com/pcXE0UI0g07lPirpL4q_ni9ECImZWPHNWtCvXLSr7nf_45Ep2nRIGKhl8nOQmcOUKl_R_IE4fck6UgW4Q9BK3g=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/QGiuky7dJ9hROoWCnWr3pQdgb4BLx_hFKgYkCSYqkJOvnGsMaTKMcZZIlbu1vDXTeH932pS_LxnfXo2xUYUd=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/KNe93hs7n6mSxCwqj2dIr64vlESfyqVWkV-eVasjeoVgTnXhAsuD36-dcLlMi98xvjmKwvRcfgER-S8LoB3eciI=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/B2U4EiPvXj6RmPZ2bKNYbVD303xc78UdWiRwWvAFvHa_VXIm9P19tCaW0QXJDfjHG_4S3mkF2BDlhGJhZGjsrJg=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/OrO_ZyDmnccEDGXbbmiT07EyL577QzpS48jzV8Q_XmeC78PUx6v4CH1lBxnCIxZbP-YKEmKeMo4u5ykRwYVbSQ=w2560-h1440-rw",
                      ],
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.coupoint.app&pcampaignid=web_share",
                      websiteLink: "https://coupoint.ca/",
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "zumi - pet care",
                      description:
                          "zumi – Professional Pet Services at Home connecting pet parents with experienced Registered Veterinary Nurses (RVNs) across the UK for non-clinical pet services delivered in the comfort of your own home. Over 10,000+ downloads!",
                      imageUrl:
                          "https://play-lh.googleusercontent.com/5SY6iwAQv3-uZUlZL3NOsOI-5bHXlkCXPSZId0mqEAVVquFuAA2PQBupI5gwoMVagdq2=w240-h480-rw",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase",
                        "GetX",
                        "Google Maps API",
                        "Worldpay Payment Integration",
                      ],
                      keyFeatures: [
                        "Connect pet parents with experienced Registered Veterinary Nurses (RVNs)",
                        "Wide range of services: nail clips, grooming, dog walking, senior pet care, etc.",
                        "Secure in-app messaging and booking management with reminders",
                        "Safe and secure payment via Worldpay",
                        "Shop for pet toys, treats, essentials and make optional in-app donations",
                      ],
                      screenshots: [
                        "https://play-lh.googleusercontent.com/4r-u1noaA8LrxbenPlvzQd5in9e2pDjVTa2Wpa7aWE2K7E6UoRuANpYZiDjnCdnci0cTe8aXzuUYdoiGiOI1R60=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/ubDqhNX_P2ZFWdy6ASeN5MvIbmbWOxYJ9WGdOSrCcWzEan-_MXnPT8gW2ZV3-L-lXLBMs5r-RHP9izRqxoeT1g=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/elGnkdaQrfYKtrh5UIsucBu6qMwOSAWBDfLgfHdexrSSg7Cxcn75ki1fZ1GhzBQwxAUHM5IafO7EXKsRyHpDASo=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/5AMxtL9kqD9I4jGLP2uGgxKtafUHdzw1b6XmCUXoAKcYuTxZjoofAAbzn49w-7OVJ1RkNus1_Oq2gfeop_2Hw4Q=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/ECEiyi22Aw1ezQGUiKcdJZJGY4_T4ly3GJaGflVBt4aLY_8dj9kiQ_mtf6HMJbWwO138ZtM7QO7iD-RlkSqk=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/tGHYa-tk5FrbcC1Wuks56QxEVyF0hYhysOzD52lj8eDUGyx2mq0HqhrSgA046mT0Y_z17MZzIaE8vmTH5WjNRA=w526-h296-rw",
                      ],
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.zumi.app.zumi_app",
                      websiteLink: "https://zumi.app/",
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "LeadFire Pro",
                      description:
                          "Ignite your business growth with LeadFire Pro - the all-in-one field and lead management app built for service professionals, designed for contractors, field agents, sales people, and business owners who need a faster, smarter way to manage leads, jobs, and customer communications.",
                      imageUrl:
                          "https://play-lh.googleusercontent.com/o-_2_Wa1Dy13fLk94kjmjEjuMogiO7YAWVJOxmuB7F4914Mor3ByBUTXgsOD5xJ8bNtzrRZXc8dHnq5qcU1K3g=w416-h235-rw",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase",
                        "GetX",
                        "CRM Integration",
                        "QR Code Integration",
                      ],
                      keyFeatures: [
                        "Lead capture - manual, QR, and synced with company CRM",
                        "Automated follow-ups and reminders for prospects",
                        "Job and property photo uploads directly from phone",
                        "Customer and lead history tracking in one place",
                        "Team lead assignment and collaboration",
                        "Campaign ROI tracking and neighborhood performance",
                      ],
                      screenshots: [
                        "https://play-lh.googleusercontent.com/vR31cuyloKspMvCslrXUk6s91cRRd9MQjYjfVltLAMsfFCvAuszCiHafL7cDwEin72SCoDQCLR44sBVmXF5gmg=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/x2qDkSN83aQY5lD55w78iO-LGipeVcTvFti5lR9YfOvtHbrlushzILqpl3fSthwBG8jj_tSmfjV6NaD5gdFW=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/FHoloDjDsOXD4BsWwiTtgl4nL07oMfdIUFu2827hs73P5ZyT9g85sjFDxxOU3NRwAZQEFtQmJX9FBUWJWAErXZU=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/hseo1SYgzX76mhpdeklKRXDNKRRLIPLbfclz9u1RPEWaTWC6ISEgw2bkByjlPJPmCJazSV4nzDFvYqWs60jl4A=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/2D3U2A4ILV6_pq10MvBL924qSkOt7Jn8hducAZ2O9XQ2FwaVzi8fYL20lKuhQg7RrFNIxZts3av6cZ4J5W3yv3Y=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/nWG4r8e_A6sMdYmjsIAzAAYUE6skQvu5MByFQwqy3ZjbE8KHUAWxZcWr6jTRuop4_oEundOH0xuPezGlWxMVZuY=w2560-h1440-rw",
                      ],
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.leadfire.app&pcampaignid=web_share",
                      iosLink:
                          "https://apps.apple.com/us/app/leadfire-pro/id6752554427",
                      websiteLink: "https://leadfirepro.com/",
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
                      iosLink:
                          "https://apps.apple.com/us/app/college-thriver/id6504110095",
                      websiteLink: "https://college-thriver.org/",
                    ),
                    isMobile,
                  ),
                  _projectCard(
                    ProjectModel(
                      title: "SecurPoint",
                      description:
                          "SecurPoint: The Ultimate Asset Security App - Safeguard your valuables and enjoy unmatched peace of mind! Register your valuables with unique digital IDs that deter theft and prevent resale, while giving buyers the power to verify legitimacy before purchase.",
                      imageUrl:
                          "https://play-lh.googleusercontent.com/eGToo2NjOGK1d-YNe6GkEJA3lB8_9fBlAqxkaA-GGUMLGLJPIsK9MUtXJtvwo9s4vnxgTLqoRLhXavTXhspHZzI=w2560-h1440-rw",
                      isAsset: false,
                      techStack: [
                        "Flutter",
                        "Firebase",
                        "GetX",
                        "Socket.io",
                        "Deep Linking",
                      ],
                      keyFeatures: [
                        "In-App Digital Locks: Secure your valuable items and property with ease",
                        "Stolen Item Verification: Protect yourself from buying stolen goods by verifying authenticity",
                        "Lost & Stolen Asset Recovery: Connect with potential buyers of your lost items",
                        "Intrusion Protection: Keep your valuables safe from unauthorised access",
                        "Asset Tracing: List, easily locate and recover lost belongings",
                      ],
                      screenshots: [
                        "https://play-lh.googleusercontent.com/eGToo2NjOGK1d-YNe6GkEJA3lB8_9fBlAqxkaA-GGUMLGLJPIsK9MUtXJtvwo9s4vnxgTLqoRLhXavTXhspHZzI=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/PZnJE0VJc5BbCQKAU8hbPUxH84_RYMdzywBGYgz80boPRhuupI1IJlLJmQMQCF_GXIKtlEcgnn3pEgvTQ-6BCqY=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/_suuIYpF5DuIsWJbn3hDvlnM96hBd8kr4PT3MKvYmGR14dHR-oyirqx9rohtqIiEi4OyyuhyNNuZnIoX_KUOtU0=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/L2GvJBzIeOazxUk8DyYhPRc74n6lDCqV6yPBEy6_ZZwI7M7R3w_6V_iKsRa_Lhl0pxa490EQDz_YaWig-_SO4P0=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/dUzcm48NEnGUtpWMWxehbUsnEweTUto0jcka6ExXwKUd8hJRFgQTSBi_SlFMM6Hy3gbvmxcwF3pI3HbaGEgB=w2560-h1440-rw",
                        "https://play-lh.googleusercontent.com/pYpb9Ff0X3Qi6rJ_q63Py6LgIgXdyAoctKgHIAd5BK8VyRIaHrL3Qocs9fAyw_0YG_smtRCxEUzOHUWBKSic=w526-h296-rw",
                      ],
                      androidLink:
                          "https://play.google.com/store/apps/details?id=com.securpoint.securpoint&pcampaignid=web_share",
                      websiteLink: "https://securpoint.app/",
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
                      websiteLink: "https://frenly.app/",
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
                      websiteLink: "https://kalibrate.app/",
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
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Get.to(
          () => ProjectDetailView(project: widget.project),
          transition: Transition.rightToLeftWithFade,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: widget.isMobile ? double.infinity : 350,
          height:
              460, // Increased slightly to ensure buttons have room at the bottom
          transform: isHovered
              ? (Matrix4.identity()..translate(0.0, -12.0))
              : Matrix4.identity(),
          decoration: ShapeDecoration(
            color: const Color(0xFF1A0B2E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: isHovered
                    ? const Color(0xFF7127BA).withValues(alpha: 0.6)
                    : Colors.white.withValues(alpha: 0.05),
                width: 1.5,
              ),
            ),
            shadows: [
              BoxShadow(
                color: isHovered
                    ? const Color(0xFF7127BA).withValues(alpha: 0.3)
                    : Colors.black.withValues(alpha: 0.4),
                blurRadius: isHovered ? 40 : 25,
                offset: isHovered ? const Offset(0, 20) : const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: widget.project.isAsset
                          ? Image.asset(
                              widget.project.imageUrl,
                              fit: BoxFit.cover,
                            )
                          : CachedNetworkImage(
                              imageUrl: widget.project.imageUrl,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: const Color(0xFF190B2D),
                                highlightColor: const Color(0xFF2B0B3A),
                                child: Container(color: Colors.white),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Center(
                                    child: Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                  ),
                            ),
                    ),
                  ),
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.1),
                          Colors.black.withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        "1",
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.white.withValues(alpha: 0.15),
                          fontSize: 80,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.project.title,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.project.description,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withValues(alpha: 0.7),
                          height: 1.4,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(), // Pushes buttons to the bottom of the card
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            if (widget.project.androidLink != null)
                              _buildActionButton(
                                icon: FontAwesomeIcons.googlePlay,
                                label: "Play Store",
                                onPressed: () => launchUrl(
                                  Uri.parse(widget.project.androidLink!),
                                ),
                              ),
                            if (widget.project.iosLink != null)
                              _buildActionButton(
                                icon: FontAwesomeIcons.appStoreIos,
                                label: "App Store",
                                onPressed: () => launchUrl(
                                  Uri.parse(widget.project.iosLink!),
                                ),
                              ),
                            if (widget.project.websiteLink != null)
                              _buildActionButton(
                                icon: FontAwesomeIcons.globe,
                                label: "Website",
                                onPressed: () => launchUrl(
                                  Uri.parse(widget.project.websiteLink!),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              const Color(0xFF7127BA).withValues(alpha: 0.2),
              Colors.white.withValues(alpha: 0.05),
            ],
          ),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(10),
            hoverColor: const Color(0xFF7127BA).withValues(alpha: 0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(icon, size: 14, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
