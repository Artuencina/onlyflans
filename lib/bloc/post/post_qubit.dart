import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:onlyflans/models/post.dart';
import 'package:onlyflans/repository/firebase_repository.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  final FirebaseRepository repository;

  PostCubit({required this.repository}) : super(PostInitial());

  //Obtener los posts de Firebase (5)
  void getPosts() async {
    try {
      final posts = await repository.getPosts(5);
      print(posts.length);
      if (posts.isEmpty) {
        emit(PostEmpty(posts: posts));
      } else {
        emit(PostLoaded(posts: posts));
      }
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }

  //Obtener un post de Firebase por su id, luego cargar otros 4 posts
  void getPost(String id) async {
    try {
      final posts = await repository.getPost(id);
      posts.addAll(await repository.getPosts(4));
      emit(PostLoaded(posts: posts));
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }

  //Obtener los posts de un usuario de Firebase
  void getPostsByUser(String id) async {
    try {
      final posts = await repository.getPostsByUser(id);
      emit(PostLoaded(posts: posts));
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }

  //Agregar un post a Firebase
  void addPost(Post post) async {
    try {
      await repository.addPost(post);
      getPosts();
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }

  //Actualizar un post en Firebase
  void updatePost(Post post) async {
    try {
      await repository.updatePost(post);
      getPosts();
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }

  //Eliminar un post de Firebase
  void deletePost(String postId) async {
    try {
      await repository.deletePost(postId);
      getPosts();
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }

  //Dar like a un post en Firebase
  void likePost(Post post, String userId) async {
    try {
      await repository.likePost(post.id, userId);
      //Emitir la lista de posts actualizada, sin traer los posts de nuevo
      final posts = (state as PostLoaded).posts;
      final index = posts.indexWhere((element) => element.id == post.id);
      posts[index] = post.copyWith(likes: post.likes + 1);
      emit(PostLoaded(posts: posts));
    } catch (e) {
      emit(PostError(message: e.toString(), posts: const []));
    }
  }
}
