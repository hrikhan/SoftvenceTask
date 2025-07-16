import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripePaymentService {
  Future<bool> makePayment() async {
    try {
      // String clientSecret =
      //     'pi_3NBz5BGZc2tT8q1G1xxxxxxxx_secret_5iBcPz3yDFxxxxxxxx';

      // Initialize Payment Sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          // paymentIntentClientSecret: clientSecret,
          merchantDisplayName: 'hridoy hosen khan',
          style: ThemeMode.light,
        ),
      );

      // Show Payment Sheet
      await Stripe.instance.presentPaymentSheet();

      return true;
    } catch (e) {
      print('Payment error: $e');
      return false;
    }
  }
}
