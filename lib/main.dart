import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naruto_db/bloc_observer.dart';
import 'package:naruto_db/core/blocs/characters/characters_bloc.dart';
import 'package:naruto_db/core/repositories/api_repository.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/views/characters_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (fn) => runApp(
      // MultiBlocProvider(
      //   providers: [
      //     BlocProvider(
      //       create: (context) => CharactersBloc(
      //         apiRepository: ApiRepository(),
      //       ),
      //     )
      //   ],
      //   child: const MyApp(),
      // ),
      // BlocProvider(
      //   create: (context) => CharactersBloc(
      //     apiRepository: ApiRepository(),
      //   ),
      //   child: const MyApp(),
      // ),
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naruto DB',
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      home: BlocProvider(
        create: (_) => CharactersBloc(apiRepository: ApiRepository())
          ..add(
            FetchCharacters(),
          ),
        child: const CharactersScreen(),
      ),
    );
  }
}
