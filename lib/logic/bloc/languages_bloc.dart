// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:language_flutter/db/preference_service.dart';

part 'languages_event.dart';
part 'languages_state.dart';

enum Languages {
  Italy,
  Irish,
  Germany,
  France,
  Dutch;

  static Languages from(String? type) {
    if (type == null || type.isEmpty) {
      return Languages.France;
    }
    return Languages.values.firstWhere((Languages item) => item.name == type);
  }
}

class LanguagesBloc extends Bloc<LanguagesEvent, LanguagesState> {
  LanguagesBloc(this.preferenceService)
      : super(const LanguagesInitial(Languages.Irish)) {
    on<ChangeLanguagesEvent>(_mapGetLanguagesEventToState);
    on<GetInitalLanguageEvent>(_mapGetInitalLanguageEventToState);
  }

  final PreferenceService preferenceService;
  FutureOr<void> _mapGetLanguagesEventToState(
      ChangeLanguagesEvent event, Emitter<LanguagesState> emit) async {
    preferenceService.setLanguage(event.language);
    emit(ChangeLanguage(event.language));
  }

  FutureOr<void> _mapGetInitalLanguageEventToState(
      GetInitalLanguageEvent event, Emitter<LanguagesState> emit) async {
    final String? getLanguage = preferenceService.getLanguage();
    emit(ChangeLanguage(Languages.from(getLanguage)));
  }
}
