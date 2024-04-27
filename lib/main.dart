import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_flutter/db/preference_service.dart';
import 'package:language_flutter/logic/bloc/languages_bloc.dart';
import 'package:language_flutter/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(
    BlocProvider<LanguagesBloc>(
      create: (context) {
        final preferenceService = PreferenceService(sharedPreferences);
        return LanguagesBloc(preferenceService)
          ..add(
            GetInitalLanguageEvent(),
          );
      },
      child: const HomePage(),
    ),
  );
}
