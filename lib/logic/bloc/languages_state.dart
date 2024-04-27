part of 'languages_bloc.dart';


sealed class LanguagesState extends Equatable {
  const LanguagesState(this.selectedLanguage);
  final Languages selectedLanguage;

  @override
  List<Object> get props => [selectedLanguage];
}

final class LanguagesInitial extends LanguagesState {
  const LanguagesInitial(super.selectedLanguage);
}

final class ChangeLanguage extends LanguagesState {
  const ChangeLanguage(super.selectedLanguage);
}
