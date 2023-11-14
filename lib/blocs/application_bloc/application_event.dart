part of 'application_bloc.dart';

@immutable
sealed class ApplicationEvent extends Equatable {}

class UserBirthYearSelected extends ApplicationEvent {
  final int selectedYear;

  UserBirthYearSelected({required this.selectedYear});

  @override
  List<Object?> get props => [selectedYear];
}

class UserChoiceSelected extends ApplicationEvent {
  final String selectedChoice;

  UserChoiceSelected({required this.selectedChoice});

  @override
  List<Object?> get props => [selectedChoice];
}
