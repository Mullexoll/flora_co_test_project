part of 'navigation_bloc.dart';

@immutable
sealed class NavigationEvent {}

class NavigateToBirthDateChoiceScreen extends NavigationEvent {}

class NavigateToTrackingChoiceScreen extends NavigationEvent {}

class NavigateToUserInfoScreen extends NavigationEvent {}
