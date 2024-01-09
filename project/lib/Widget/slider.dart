import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:team5/utill/color.dart';

class FilterCareerSlider extends StatefulWidget {
  @override
  _FilterCareerSliderState createState() => _FilterCareerSliderState();
}

class _FilterCareerSliderState extends State<FilterCareerSlider> {
  RangeValues _currentRangeValues = const RangeValues(0, 11);

  String getLabel(double value) {
    if (value.round() == 11) {
      return '전체';
    } else if (value.round() == 10) {
      return '10년 이상';
    } else {
      return '${value.round().toString()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 18,
          child: Text(
            getLabel(_currentRangeValues.start) == '0' &&
                    getLabel(_currentRangeValues.end) == '전체'
                ? getLabel(_currentRangeValues.end)
                : '${getLabel(_currentRangeValues.start)} ~ ${getLabel(_currentRangeValues.end)}',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColor.Primary100,
            trackHeight: 0.1,
            thumbColor: Colors.white,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 1.0,
              disabledThumbRadius: 1.0,
              elevation: 4,
            ),
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 11,
            divisions: 11,
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
        ),
      ],
    );
  }
}
