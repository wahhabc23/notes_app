import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/applications/bloc/home_bloc.dart';
import 'package:notes_app/core/colors.dart';
import 'package:notes_app/domain/di/injectable.dart';
import 'package:notes_app/domain/home/model/notes_model.dart';
import 'package:notes_app/presentations/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // configure injectable
  await configureInjectable();
  // initialize hive
  await Hive.initFlutter();
  // check adapter registered, if not register it
  if (!Hive.isAdapterRegistered(NotesModelAdapter().typeId)) {
    Hive.registerAdapter(NotesModelAdapter());
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return getIt<HomeBloc>();
      },
      child: MaterialApp(
        theme: ThemeData(
          // default appBar theme
          appBarTheme: AppBarTheme(
            color: primaryBGColor,
            titleTextStyle: const TextStyle(
              color: primaryOverlay,
              fontSize: 20,
            ),
            // default icons theme
            iconTheme: const IconThemeData(
              color: primaryOverlay
            ),
          ),
          // default theme
          primarySwatch: primaryMaterialColor,
          // default floating_action_button theme
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: primaryOverlay,
          ),

          // primaryIconTheme: IconThemeData(co
          //lor: primaryBGColor),
        ),
        home: const HomeScreen(),
        // hide debug banner
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
