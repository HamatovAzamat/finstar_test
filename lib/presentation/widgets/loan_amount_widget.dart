import 'package:finstar_test/helpers/text_edditing_helper.dart';
import 'package:flutter/material.dart';

class LoanAmountWidget extends StatelessWidget {
  const LoanAmountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Сумма кредита'),
        ),
        Expanded(
          //flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: loanAmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Введите сумму кредита',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
