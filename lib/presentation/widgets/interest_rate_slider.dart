import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InterestRateSlider extends StatelessWidget {
  final currentValue = 0.0.obs;

  InterestRateSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      value: currentValue.value,
      onChanged: (newValue) => currentValue.value = newValue,
      min: 0,
      max: 100,
      label: '${currentValue.value.toInt()}',
    );
  }
}
