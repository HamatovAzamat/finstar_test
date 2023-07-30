import 'package:finstar_test/helpers/text_edditing_controllers.dart';
import 'package:flutter/material.dart';

class LoanAmountWidget extends StatelessWidget {
  const LoanAmountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: loanAmountController,
    );
  }
}
