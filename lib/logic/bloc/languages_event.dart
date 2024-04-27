part of 'languages_bloc.dart';

sealed class LanguagesEvent extends Equatable {
  const LanguagesEvent();

  @override
  List<Object> get props => [];
}

class ChangeLanguagesEvent extends LanguagesEvent {
  final Languages language;

  const ChangeLanguagesEvent(this.language);
}

class GetInitalLanguageEvent extends LanguagesEvent {}
