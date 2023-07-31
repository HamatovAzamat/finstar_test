import 'package:finstar_test/helpers/text_edditing_helper.dart';
import 'package:flutter/material.dart';

class LoanTermWidget extends StatelessWidget {
  const LoanTermWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Срок кредита (мес.)'),
        ),
        Expanded(
          //flex: 1,
          child: Container(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: loanTermController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'Введите срок кредита',
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
