import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
                "Experience",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: isMobile ? 32 : 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 4,
                width: 60,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF7127BA), Color(0xFF1877F2)],
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "My professional journey and work experience",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 60),
              _experienceItem(
                role: "Flutter Developer",
                company: "MMF Infotech Technologies Pvt Ltd",
                description: "Developing and maintaining cross-platform mobile and web applications using Flutter, ensuring seamless performance across various devices. Integrated Firebase services, including Firestore, Authentication, Cloud Functions, and real-time database updates to enhance app functionality. Designed and implemented efficient local database solutions (Hive, SQLite) for offline data storage and synchronization. Developed and optimized REST API integrations to ensure seamless communication between the app and backend services. Implemented third-party API integrations, including OTP authentication, and email notifications, to enhance user experience and security. Ensured code quality and maintainability through best practices, code reviews, and continuous integration workflows. Implemented advanced UI/UX features, animations, and responsive layouts to enhance the user experience.",
                date: "01/2025 – Present",
                location: "Indore, India",
                jobType: "Full Time",
                skills: [
                  "Flutter",
                  "Dart",
                  "SQLite",
                  "Hive",
                  "Firebase",
                  "Firestore",
                  "REST APIs",
                  "Third-party APIs",
                  "OTP Authentication",
                  "UI/UX",
                  "Responsive Design",
                  "Animations",],
                isMobile: isMobile,
                isLast: false,
              ),
              _experienceItem(
                role: "Flutter Developer",
                company: "Creative Thoughts Informatics Pvt. Ltd.",
                description:  "Proficient in state management using GetX and Provider, with basic knowledge of Riverpod. Experienced in integrating RESTful APIs and working with third-party services. Familiar with Firebase services such as Authentication and Firestore.\nWorked on multiple projects both independently and in team environments, focusing on performance, scalability, and timely delivery.",
                date: "03/2023 – 01/2025",
                location: "Indore, India",
                jobType: "Full Time",
                skills: [
                  "Flutter",
                  "Dart",
                  "Mobile Development",
                  "UI/UX",
                  "Error Handling",
                  "Performance Optimization",
                  "Payment Gateways",
                ],
                isMobile: isMobile,
                isLast: false,
              ),
              _experienceItem(
                role: "Flutter Developer (Internship)",
                company: "Alphawizz Technologies Pvt. Ltd.",
                description:   "Enthusiastic Flutter intern with a strong aptitude for building responsive and user-friendly UI designs. Proficient in Dart programming concepts, utilizing its features to develop efficient and maintainable code. Demonstrated excellent teamwork and collaboration skills, actively contributing to project success.",
                date: "09/2022 – 01/2023",
                location: "Indore, India",
                jobType: "Internship",
                skills: ["Flutter", "API Integration", "Dart", "Mobile Apps"],
                isMobile: isMobile,
                isLast: true,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _experienceItem({
    required String role,
    required String company,
    required String description,
    required String date,
    required String location,
    required String jobType,
    required List<String> skills,
    required bool isMobile,
    required bool isLast,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline Column
          Column(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: const Color(0xFF7127BA),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7127BA).withValues(alpha: 0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              if (!isLast)
                Expanded(child: Container(width: 2, color: Colors.white24)),
            ],
          ),
          const SizedBox(width: 20),
          // Content Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A0B2E),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.1),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  role,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: isMobile ? 18 : 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  company,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: isMobile ? 14 : 18,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF1877F2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (!isMobile)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.05),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.1),
                                ),
                              ),
                              child: Text(
                                date,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                        ],
                      ),
                      if (isMobile) const SizedBox(height: 10),
                      if (isMobile)
                        Text(
                          date,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            color: Colors.white60,
                          ),
                        ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.redAccent,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "$location • $jobType",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 13,
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        description,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withValues(alpha: 0.7),
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: skills.map((skill) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.05),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white.withValues(alpha: 0.1),
                              ),
                            ),
                            child: Text(
                              skill,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 11,
                                color: Colors.white70,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
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
