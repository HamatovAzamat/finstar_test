import 'package:finstar_test/helpers/text_edditing_controllers.dart';
import 'package:flutter/material.dart';

class LoanTermWidget extends StatelessWidget {
  const LoanTermWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: loanTermController,
    );
  }
}
