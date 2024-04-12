//Estados de los posts que se ven en la aplicacion
//(1) PostInitial: Estado inicial, no se ha hecho ninguna accion
//(2) PostLoaded: Estado de carga exitosa, se ha cargado la informacion de los posts
//(3) PostError: Estado de error, no se ha podido cargar la informacion de los posts

part of 'post_qubit.dart';

abstract class PostState extends Equatable {
  final List<Post> posts;
  const PostState({required this.posts});
}

class PostInitial extends PostState {
  PostInitial() : super(posts: []);
  @override
  List<Object> get props => [posts];
}

class PostLoaded extends PostState {
  const PostLoaded({required super.posts});
  @override
  List<Object> get props => [posts];
}

class PostEmpty extends PostState {
  const PostEmpty({required super.posts});
  @override
  List<Object> get props => [posts];
}

class PostError extends PostState {
  final String message;
  const PostError({required this.message, required super.posts});
  @override
  List<Object> get props => [message, posts];
}
