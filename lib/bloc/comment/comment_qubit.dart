import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:onlyflans/models/comment.dart";
import "package:onlyflans/repository/firebase_repository.dart";

part "comment_state.dart";

class CommentCubit extends Cubit<CommentState> {
  final FirebaseRepository _repository;
  CommentCubit({required FirebaseRepository repository})
      : _repository = repository,
        super(CommentInitial());

  //Obtener los comentarios de un post
  Future<void> getComments(String postId) async {
    try {
      emit(CommentLoading(comments: state.comments));
      final comments = await _repository.getComments(postId);
      emit(CommentLoaded(comments: comments));
    } catch (e) {
      emit(CommentError(message: e.toString(), comments: state.comments));
    }
  }

  //Agregar un comentario a un post
  Future<void> addComment(String postId, Comment comment) async {
    try {
      await _repository.addComment(postId, comment);
      final comments = await _repository.getComments(postId);
      emit(CommentLoaded(comments: comments));
    } catch (e) {
      emit(CommentError(message: e.toString(), comments: state.comments));
    }
  }

  //Eliminar un comentario de un post
  Future<void> deleteComment(String postId, String commentId) async {
    try {
      await _repository.deleteComment(postId, commentId);
      final comments = await _repository.getComments(postId);
      emit(CommentLoaded(comments: comments));
    } catch (e) {
      emit(CommentError(message: e.toString(), comments: state.comments));
    }
  }

  //Darle like a un comentario (no trae de vuelta todos los comentarios)
  Future<void> likeComment(
      String postId, String commentId, String userId) async {
    try {
      final bool agregar =
          await _repository.likeComment(postId, commentId, userId);

      //Actualizar el estado
      final comments = state.comments.map((comment) {
        if (comment.commentId == commentId) {
          return comment.copyWith(likes: comment.likes + (agregar ? 1 : -1));
        }
        return comment;
      }).toList();

      emit(CommentLoaded(comments: comments));
    } catch (e) {
      emit(CommentError(message: e.toString(), comments: state.comments));
    }
  }
}
