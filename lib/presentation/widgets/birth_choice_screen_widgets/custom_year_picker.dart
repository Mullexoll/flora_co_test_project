import 'package:flora_test_project/presentation/helpers/text_style_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/application_bloc/application_bloc.dart';

class CustomYearPicker extends StatefulWidget {
  const CustomYearPicker({super.key});

  @override
  State<CustomYearPicker> createState() => _CustomYearPickerState();
}

class _CustomYearPickerState extends State<CustomYearPicker> {
  final FixedExtentScrollController fixedExtentScrollController =
      FixedExtentScrollController(initialItem: 120);
  final DateTime now = DateTime.now();

  void yearSelected(BuildContext context, int selectedYear) {
    final ApplicationBloc applicationBloc =
        BlocProvider.of<ApplicationBloc>(context);

    final _ = applicationBloc.add(
      UserBirthYearSelected(
        selectedYear: selectedYear,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int startYear = now.year - 100;

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 300,
        child: CupertinoPicker(
          scrollController: fixedExtentScrollController,
          itemExtent: 50,
          onSelectedItemChanged: (int i) =>
              yearSelected(context, startYear + i),
          children: List.generate(
            now.year - startYear + 1,
            (index) => Center(
              child: Text(
                '${startYear + index}',
                style: black30w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
