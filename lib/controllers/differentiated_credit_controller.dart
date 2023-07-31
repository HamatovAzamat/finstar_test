import 'package:finstar_test/helpers/handle_errors_helper.dart';
import 'package:finstar_test/helpers/interest_rate_helper.dart';
import 'package:finstar_test/helpers/result_values_helper.dart';
import 'package:finstar_test/helpers/text_edditing_helper.dart';
import 'package:get/get.dart';

class DifferentiatedCreditController extends GetxController{

  static DifferentiatedCreditController get to => Get.find<DifferentiatedCreditController>();

  void calc(){
    if (hasErrors) return;
    var amount = double.parse(loanAmountController.text);
    var months = double.parse(loanTermController.text);
    var interest = interestRate.value.toDouble() / 12 / 100;
    monthlyPaymentResult.value = amount / months * (1 + interest) ;
    totalPaymentResult.value = monthlyPaymentResult.value * months;
    overpayResult.value = totalPaymentResult.value - amount;

  }

}