import 'package:language_flutter/logic/bloc/languages_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  final SharedPreferences preferences;
  const PreferenceService(this.preferences);

  Future<void> setLanguage(Languages language) async {
    await preferences.setString(
      'language',
      language.name,
    );
  }

  String? getLanguage() {
    return preferences.getString('language');
  }

  void clearPreferences() {
    preferences.clear();
  }
}
