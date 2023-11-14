import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationInitial()) {
    on<UserBirthYearSelected>(_onUserBirthYearSelected);
    on<UserChoiceSelected>(_onUserChoiceSelected);
  }

  FutureOr<void> _onUserBirthYearSelected(
    UserBirthYearSelected event,
    Emitter<ApplicationState> emit,
  ) {
    emit(
      (state as ApplicationLoaded).copyWith(
        selectedYear: event.selectedYear,
      ),
    );
  }

  FutureOr<void> _onUserChoiceSelected(
    UserChoiceSelected event,
    Emitter<ApplicationState> emit,
  ) {
    emit(
      ApplicationLoaded(
        selectedYear: DateTime.now().year,
        selectedChoice: event.selectedChoice,
      ),
    );
  }
}
