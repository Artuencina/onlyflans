//Modelo de post
class Post {
  final String id;
  final String description;
  final bool isVideo;
  final String url;
  final int likes;

  const Post({
    required this.id,
    required this.description,
    required this.isVideo,
    required this.url,
    required this.likes,
  });
}
