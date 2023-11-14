import 'package:flora_test_project/blocs/application_bloc/application_bloc.dart';
import 'package:flora_test_project/presentation/widgets/user_info_screen_widgets/user_info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/bg_screen_1.svg',
                    fit: BoxFit.fill,
                  ),
                  BlocBuilder<ApplicationBloc, ApplicationState>(
                    builder: (context, state) {
                      if (state is ApplicationLoaded) {
                        return UserInfoCard(
                          state: state,
                        );
                      }

                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
