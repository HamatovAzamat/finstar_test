import 'package:finstar_test/presentation/widgets/loan_amount_widget.dart';
import 'package:finstar_test/presentation/widgets/loan_term_widget.dart';
import 'package:flutter/material.dart';

class AnnuityPage extends StatelessWidget {
  const AnnuityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Аннуитетный кредит'),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                LoanAmountWidget(),
                LoanTermWidget(),
              ],
            ),
            const SizedBox(height: 20),


          ],
        ),

      ),
    );
  }
}
