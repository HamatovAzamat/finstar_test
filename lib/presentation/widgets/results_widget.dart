import 'package:finstar_test/helpers/result_values_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          ListTile(
            title: Text('Общая сумма: ${totalPaymentResult.value.toStringAsFixed(2)} (руб.)'),
          ),
          ListTile(
            title: Text(
                'Ежемесячный платеж: ${monthlyPaymentResult.value.toStringAsFixed(2)} (руб.)'),
          ),
          ListTile(
            title: Text('Переплата: ${overpayResult.value.toStringAsFixed(2)} (руб.)'),
          ),
        ],
      ),
    );
  }
}
