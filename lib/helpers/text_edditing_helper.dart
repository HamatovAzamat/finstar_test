import 'package:flutter/material.dart';

final loanAmountController = TextEditingController();
final loanTermController = TextEditingController();

double get loanAmount => double.parse(loanAmountController.text);
double get loanTerm => double.parse(loanTermController.text);