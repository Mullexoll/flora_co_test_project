part of 'navigation_bloc.dart';

@immutable
sealed class NavigationState {}

final class TrackingChoiceScreenState extends NavigationState {}

final class BirthDateChoiceScreenState extends NavigationState {}

final class UserInfoScreenState extends NavigationState {}
