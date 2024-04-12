import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onlyflans/bloc/comment/comment_qubit.dart';
import 'package:onlyflans/bloc/post/post_qubit.dart';
import 'package:onlyflans/core/theme/theme.dart';
import 'package:onlyflans/firebase_options.dart';
import 'package:onlyflans/screens/reel_screen.dart';
import 'dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  dependencySetup();

  runApp(
    MaterialApp(
        title: "OnlyFlans",
        theme: lightTheme,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        darkTheme: darkTheme,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<PostCubit>(
              create: (context) => getIt()..getPosts(),
            ),
            BlocProvider<CommentCubit>(
              create: (context) => getIt(),
            ),
          ],
          child: const ReelScreen(),
        )),
  );
}
