import 'package:flora_test_project/presentation/helpers/transition_animation_helper.dart';
import 'package:flora_test_project/presentation/screens/birth_date_choice.screen.dart';
import 'package:flora_test_project/presentation/screens/tracking_choice.screen.dart';
import 'package:flora_test_project/presentation/screens/user_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/application_bloc/application_bloc.dart';
import 'blocs/navigation_bloc/navigation_bloc.dart';

void main() {
  Paint.enableDithering;
  runApp(const FloraTestApplication());
}

class FloraTestApplication extends StatelessWidget {
  const FloraTestApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc(),
        ),
        BlocProvider(
          create: (context) => ApplicationBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Flora Co Test App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (BuildContext context, NavigationState state) {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              if (state is TrackingChoiceScreenState) {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const TrackingChoiceScreen();
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return TransitionAnimationHelper(
                        animation: animation,
                        child: child,
                      );
                    },
                  ),
                );
              } else if (state is BirthDateChoiceScreenState) {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const BirthDateChoiceScreen();
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return TransitionAnimationHelper(
                        animation: animation,
                        child: child,
                      );
                    },
                  ),
                );
              } else if (state is UserInfoScreenState) {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const UserInfoScreen();
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return TransitionAnimationHelper(
                        animation: animation,
                        child: child,
                      );
                    },
                  ),
                );
              }
            });

            return const SizedBox.shrink();
          },
          // Empty container, just for listening
        ),
      ),
    );
  }
}
