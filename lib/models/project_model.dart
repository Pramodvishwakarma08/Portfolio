class ProjectModel {
  final String title;
  final String description;
  final String imageUrl;
  final bool isAsset;
  final List<String> techStack;
  final List<String> keyFeatures;
  final List<String> screenshots;
  final String? androidLink;
  final String? iosLink;

  ProjectModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isAsset = false,
    required this.techStack,
    required this.keyFeatures,
    this.screenshots = const [],
    this.androidLink,
    this.iosLink,
  });
}
