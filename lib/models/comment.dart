//Modelo de comentario
class Comment {
  final String postId;
  final String commentId;
  final String userId;
  final String description;
  final int likes;

  const Comment({
    required this.postId,
    required this.commentId,
    required this.userId,
    required this.description,
    required this.likes,
  });

  //CopyWith
  Comment copyWith({
    String? postId,
    String? commentId,
    String? userId,
    String? description,
    int? likes,
  }) {
    return Comment(
      postId: postId ?? this.postId,
      commentId: commentId ?? this.commentId,
      userId: userId ?? this.userId,
      description: description ?? this.description,
      likes: likes ?? this.likes,
    );
  }
}
