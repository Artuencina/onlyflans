//Utilizar get_it con singleton para todos los cubits y repositories
import 'package:get_it/get_it.dart';
import 'package:onlyflans/bloc/comment/comment_qubit.dart';
import 'package:onlyflans/bloc/post/post_qubit.dart';
import 'package:onlyflans/repository/firebase_repository.dart';

final GetIt getIt = GetIt.instance;

void dependencySetup() {
  getIt.registerSingleton<FirebaseRepository>(FirebaseRepository.initialize());
  getIt.registerSingleton<PostCubit>(
      PostCubit(repository: getIt.get<FirebaseRepository>()));
  getIt.registerSingleton<CommentCubit>(
      CommentCubit(repository: getIt.get<FirebaseRepository>()));
}
