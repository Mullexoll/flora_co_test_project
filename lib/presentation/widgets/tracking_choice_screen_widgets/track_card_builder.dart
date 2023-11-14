import 'package:flora_test_project/blocs/application_bloc/application_bloc.dart';
import 'package:flora_test_project/presentation/widgets/tracking_choice_screen_widgets/track_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../blocs/navigation_bloc/navigation_bloc.dart';

class TrackCardBuilder extends StatelessWidget {
  const TrackCardBuilder({super.key});

  _onCardTapped(BuildContext context, String selectedChoice) {
    final NavigationBloc navigationBloc =
        BlocProvider.of<NavigationBloc>(context);
    final ApplicationBloc applicationBloc =
        BlocProvider.of<ApplicationBloc>(context);

    var _ = navigationBloc.add(NavigateToBirthDateChoiceScreen());
    _ = applicationBloc.add(UserChoiceSelected(
      selectedChoice: selectedChoice,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TrackCard(
            cardTitle: 'Track my period',
            cardSubTitle: 'contraception and well-being',
            onCardTap: _onCardTapped,
          ),
          const Gap(73),
          TrackCard(
            cardTitle: 'Get pregnant',
            cardSubTitle: 'learn about reproductive health',
            onCardTap: _onCardTapped,
          ),
        ],
      ),
    );
  }
}
