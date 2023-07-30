import 'package:finstar_test/helpers/loan_type_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanTypeWidget extends StatelessWidget {
  const LoanTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          ListTile(
            title: const Text('Аннуитетный кредит'),
            leading: Radio<LoanTypes>(
              value: LoanTypes.annuity,
              groupValue: loanType.value,
              onChanged: (LoanTypes? value) {
                loanType.value = value ?? LoanTypes.annuity;
              },
            ),
          ),
          ListTile(
            title: const Text('Дифференцированный кредит'),
            leading: Radio<LoanTypes>(
              value: LoanTypes.differentiated,
              groupValue: loanType.value,
              onChanged: (LoanTypes? value) =>
                  loanType.value = value ?? LoanTypes.differentiated,
            ),
          ),
        ],
      ),
    );
  }
}
