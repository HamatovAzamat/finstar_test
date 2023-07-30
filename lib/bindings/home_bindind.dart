import 'package:finstar_test/controllers/annuity_credit_controller.dart';
import 'package:finstar_test/controllers/differentiated_credit_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.put<AnnuityCreditController>(AnnuityCreditController());
    Get.put<DifferentiatedCreditController>(DifferentiatedCreditController());
  }

}