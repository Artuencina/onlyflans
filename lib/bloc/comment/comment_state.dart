//Estado del cubit de comentarios
part of 'comment_qubit.dart';

abstract class CommentState extends Equatable {
  final List<Comment> comments;
  const CommentState({required this.comments});
}

class CommentInitial extends CommentState {
  CommentInitial() : super(comments: []);
  @override
  List<Object> get props => [comments];
}

class CommentLoading extends CommentState {
  const CommentLoading({required super.comments});
  @override
  List<Object> get props => [comments];
}

class CommentLoaded extends CommentState {
  const CommentLoaded({required super.comments});
  @override
  List<Object> get props => [comments];
}

class CommentError extends CommentState {
  final String message;
  const CommentError({required this.message, required super.comments});
  @override
  List<Object> get props => [message, comments];
}
