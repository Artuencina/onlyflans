//Repositorio de Firebase para manejar la informacion de la app

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:onlyflans/models/appuser.dart';
import 'package:onlyflans/models/comment.dart';
import 'package:onlyflans/models/post.dart';
import 'package:onlyflans/repository/repository.dart';

class FirebaseRepository extends Repository {
  final FirebaseFirestore _firestore;

  FirebaseRepository(this._firestore);

  //Inicializar la instancia de Firestore
  static FirebaseRepository initialize() {
    return FirebaseRepository(FirebaseFirestore.instance);
  }

  @override
  Future<void> addComment(String postId, Comment comment) {
    // TODO: implement addComment
    throw UnimplementedError();
  }

  @override
  Future<void> addPost(Post post) {
    //Crear post en firestore en la coleccion posts
    return _firestore.collection("posts").add(post.toMap());
  }

  @override
  Future<void> addUser(AppUser user) {
    // TODO: implement addUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment(String postId, String commentId) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<void> deletePost(String postId) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(AppUser user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<void> followUser(String userId, String userToFollowId) {
    // TODO: implement followUser
    throw UnimplementedError();
  }

  @override
  Future<List<Comment>> getComments(String postId) {
    // TODO: implement getComments
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPost(String? id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts(int? cant) {
    //Obtener los posts de Firestore
    return _firestore.collection("posts").get().then(
        (value) => value.docs.map((e) => Post.fromMap(e.data())).toList());
  }

  @override
  Future<List<Post>> getPostsByUser(String? id) {
    // TODO: implement getPostsByUser
    throw UnimplementedError();
  }

  @override
  Future<AppUser> getUser(String? id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<bool> likeComment(String postId, String commentId, String userId) {
    // TODO: implement likeComment
    throw UnimplementedError();
  }

  @override
  Future<void> likePost(String postId, String userId) {
    // TODO: implement likePost
    throw UnimplementedError();
  }

  @override
  Future<void> unfollowUser(String userId, String userToUnfollowId) {
    // TODO: implement unfollowUser
    throw UnimplementedError();
  }

  @override
  Future<void> updateComment(String postId, Comment comment) {
    // TODO: implement updateComment
    throw UnimplementedError();
  }

  @override
  Future<void> updatePost(Post post) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(AppUser user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isCommentLiked(String postId, String commentId, String userId) {
    // TODO: implement isCommentLiked
    throw UnimplementedError();
  }

  @override
  Future<bool> isPostLiked(String postId, String userId) {
    // TODO: implement isPostLiked
    throw UnimplementedError();
  }
}
