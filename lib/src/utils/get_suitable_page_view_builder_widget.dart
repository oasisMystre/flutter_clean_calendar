import 'package:clean_calendar/src/state/properties_state.dart';
import 'package:clean_calendar/src/ui/page_view_builders.dart';
import 'package:flutter/material.dart';

class GetSuitablePageViewBuilderWidget extends StatelessWidget {
  const GetSuitablePageViewBuilderWidget(
      {Key? key, required this.dateSelectionMode})
      : super(key: key);

  final DatePickerSelectionMode dateSelectionMode;

  @override
  Widget build(BuildContext context) {
    if (dateSelectionMode == DatePickerSelectionMode.single ||
            dateSelectionMode == DatePickerSelectionMode.disable
        // || dateSelectionMode == DatePickerSelectionMode.multiple
        ) {
      return const ScrollablePageViewBuilder();
    }
    // if (dateSelectionMode == DatePickerSelectionMode.range) {
    //   return const NonScrollablePageViewBuilder();
    // }
    else {
      return const SizedBox();
    }
  }
}
