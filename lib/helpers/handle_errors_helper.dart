import 'package:finstar_test/helpers/interest_rate_helper.dart';
import 'package:finstar_test/helpers/text_edditing_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool get hasErrors {

  if (loanTermController.text.isEmpty || loanAmountController.text.isEmpty) {
    _showSnackBar('Введите данные для расчета');
    return true;
  }
  if (loanTermController.text.contains('-') ) {
    _showSnackBar('Срок кредита не может быть отрицательным');
    return true;
  }
  if (loanAmountController.text.contains('-') ) {
    _showSnackBar('Срок кредита не может быть отрицательным');
    return true;
  }
  if (interestRate.value == 0){
    _showSnackBar('Процентная ставка не может равняться 0');
    return true;
  }

  return false;
}

_showSnackBar(String message) => Get.snackbar('Ошибка', message,backgroundColor: Colors.grey);
