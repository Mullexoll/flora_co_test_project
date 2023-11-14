import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(TrackingChoiceScreenState()) {
    on<NavigateToBirthDateChoiceScreen>((event, emit) {
      emit(BirthDateChoiceScreenState());
    });
    on<NavigateToTrackingChoiceScreen>((event, emit) {
      emit(TrackingChoiceScreenState());
    });
    on<NavigateToUserInfoScreen>((event, emit) {
      emit(UserInfoScreenState());
    });
  }
}
