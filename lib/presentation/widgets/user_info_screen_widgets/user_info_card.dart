import 'package:flora_test_project/blocs/application_bloc/application_bloc.dart';
import 'package:flora_test_project/presentation/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final ApplicationLoaded state;

  const UserInfoCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            state.selectedChoice,
            style: black30w900,
          ),
          Text(
            state.selectedYear.toString(),
            style: black20w400,
          ),
        ],
      ),
    );
  }
}
