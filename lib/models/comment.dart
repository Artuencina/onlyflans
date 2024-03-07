//Modelo de comentario
class Comment {
  final String postId;
  final String commentId;
  final String userId;
  final String description;

  const Comment({
    required this.postId,
    required this.commentId,
    required this.userId,
    required this.description,
  });
}
