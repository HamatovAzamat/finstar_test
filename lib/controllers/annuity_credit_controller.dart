import 'dart:math';

import 'package:finstar_test/helpers/interest_rate_helper.dart';
import 'package:finstar_test/helpers/result_values_helper.dart';
import 'package:finstar_test/helpers/text_edditing_helper.dart';
import 'package:get/get.dart';

class AnnuityCreditController extends GetxController {
  static AnnuityCreditController get to => Get.find<AnnuityCreditController>();

  void calc() {
    print('AnnuityCreditController calc');
    //TODO: checkErrors();
    var amount = double.parse(loanAmountController.text);
    var months = double.parse(loanTermController.text);
    var interest = interestRate.value.toDouble() / 12 / 100;
    var k = (interest * pow((1 + interest), months)) /
        (pow((1 + interest), months) - 1);
    print(k);
    monthlyPaymentResult.value = k * amount;
    totalPaymentResult.value = monthlyPaymentResult.value * months;
    overpayResult.value = totalPaymentResult.value - amount;
  }
}
