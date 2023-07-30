import 'package:finstar_test/helpers/interest_rate_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InterestRateSlider extends StatelessWidget {

  const InterestRateSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Row(
          children: [
            Text('${interestRate.value.toInt()}%'),
            Expanded(
              child: Slider.adaptive(
                value: interestRate.value.toDouble(),
                onChanged: (newValue) => interestRate.value = newValue.toInt(),
                min: 0,
                max: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
