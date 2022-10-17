import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kindling/dk/screens/myplanbuy_screen.dart';
import 'package:kindling/dk/screens/select_payment_method1.dart';

import '../screens/my_plan_details_screen.dart';
import '../screens/payment_done_screen.dart';
import '../screens/select_payment_method2.dart';

class MyRouter {
  static var myPlansScreen = "/myPlansScreen";
  static var myPlansDetailsScreen = "/myPlansDetailsScreen";
  static var selectPaymentMethod1 = "/selectPaymentMethod1";
  static var selectPaymentMethod2 = "/SelectPaymentMethod2";
  static var paymentDoneScreen = "/paymentDoneScreen";

  static var route = [
    GetPage(name: '/', page: () => MyPlanBuyScreen()),
    GetPage(
        name: MyRouter.selectPaymentMethod1,
        page: () => SelectPaymentMethod1()),
    GetPage(
        name: MyRouter.selectPaymentMethod2,
        page: () => SelectPaymentMethod2()),
    GetPage(name: MyRouter.paymentDoneScreen, page: () => PaymentDoneScreen()),
    GetPage(
        name: MyRouter.myPlansDetailsScreen,
        page: () => MyPlansDetailsScreen()),
  ];
}
