//Interfaz de repositorio

import 'package:onlyflans/models/appuser.dart';
import 'package:onlyflans/models/comment.dart';
import 'package:onlyflans/models/post.dart';

abstract class Repository {
  Future<List<Post>> getPosts(int? cant);
  Future<List<Post>> getPost(String? id);
  Future<List<Post>> getPostsByUser(String? id);

  Future<void> addPost(Post post);
  Future<void> updatePost(Post post);
  Future<void> deletePost(String postId);
  Future<void> likePost(String postId, String userId);
  Future<bool> isPostLiked(String postId, String userId);

  Future<void> addComment(String postId, Comment comment);
  Future<void> deleteComment(String postId, String commentId);
  Future<bool> likeComment(String postId, String commentId, String userId);
  Future<bool> isCommentLiked(String postId, String commentId, String userId);
  Future<void> updateComment(String postId, Comment comment);
  Future<List<Comment>> getComments(String postId);

  Future<void> followUser(String userId, String userToFollowId);
  Future<void> unfollowUser(String userId, String userToUnfollowId);

  Future<AppUser> getUser(String? id);
  Future<void> updateUser(AppUser user);
  Future<void> deleteUser(AppUser user);
  Future<void> addUser(AppUser user);
}
