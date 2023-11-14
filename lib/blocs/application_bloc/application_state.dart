part of 'application_bloc.dart';

@immutable
sealed class ApplicationState extends Equatable {}

final class ApplicationInitial extends ApplicationState {
  @override
  List<Object?> get props => [];
}

final class ApplicationLoaded extends ApplicationState {
  final int selectedYear;
  final String selectedChoice;

  ApplicationLoaded({
    required this.selectedYear,
    required this.selectedChoice,
  });

  ApplicationLoaded copyWith({
    int? selectedYear,
    String? selectedChoice,
  }) {
    return ApplicationLoaded(
      selectedYear: selectedYear ?? this.selectedYear,
      selectedChoice: selectedChoice ?? this.selectedChoice,
    );
  }

  @override
  List<Object?> get props => [
        selectedYear,
        selectedChoice,
      ];
}
