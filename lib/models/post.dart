// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

  Post copyWith({
    String? id,
    String? description,
    bool? isVideo,
    String? url,
    int? likes,
  }) {
    return Post(
      id: id ?? this.id,
      description: description ?? this.description,
      isVideo: isVideo ?? this.isVideo,
      url: url ?? this.url,
      likes: likes ?? this.likes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'description': description,
      'isVideo': isVideo,
      'url': url,
      'likes': likes,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] as String,
      description: map['description'] as String,
      isVideo: map['isVideo'] as bool,
      url: map['url'] as String,
      likes: map['likes'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(id: $id, description: $description, isVideo: $isVideo, url: $url, likes: $likes)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.description == description &&
        other.isVideo == isVideo &&
        other.url == url &&
        other.likes == likes;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        description.hashCode ^
        isVideo.hashCode ^
        url.hashCode ^
        likes.hashCode;
  }
}
