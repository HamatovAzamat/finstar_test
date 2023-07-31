import 'package:finstar_test/controllers/annuity_credit_controller.dart';
import 'package:finstar_test/controllers/differentiated_credit_controller.dart';
import 'package:finstar_test/helpers/loan_type_helper.dart';
import 'package:finstar_test/presentation/widgets/interest_rate_slider.dart';
import 'package:finstar_test/presentation/widgets/loan_amount_widget.dart';
import 'package:finstar_test/presentation/widgets/loan_term_widget.dart';
import 'package:finstar_test/presentation/widgets/loan_type_widget.dart';
import 'package:finstar_test/presentation/widgets/results_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Расчет значений',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const LoanTypeWidget(),
            const SizedBox(height: 10),
            const LoanAmountWidget(),
            const SizedBox(height: 10),
            const LoanTermWidget(),
            const InterestRateSlider(),
            ElevatedButton(
              onPressed: () => (loanType.value == LoanTypes.annuity)
                  ? AnnuityCreditController.to.calc()
                  : DifferentiatedCreditController.to.calc(),
              child: const Text('Расчитать'),
            ),
            const ResultsWidget(),
          ],
        ),
      ),
    );
  }
}
