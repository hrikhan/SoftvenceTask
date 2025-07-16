import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:softvence_task/services/stripe_services.dart';
import 'package:softvence_task/utility/colors.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;

  // void startPayment() async {
  //   try {
  //     isLoading(true);

  //     bool success = await StripePaymentService().makePayment();

  //     if (success) {
  //       Get.snackbar(
  //         "Payment Success",
  //         "Thanks for your payment!",
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: const Color(0xFF7D57B9),
  //         colorText: const Color(0xFFFFFFFF),
  //       );
  //     } else {
  //       Get.snackbar(
  //         "Payment Failed",
  //         "Something went wrong.",
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: const Color(0xFFB00020),
  //         colorText: const Color(0xFFFFFFFF),
  //       );
  //     }
  //   } catch (e) {
  //     Get.snackbar(
  //       "Payment Error",
  //       e.toString(),
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: const Color(0xFFB00020),
  //       colorText: const Color(0xFFFFFFFF),
  //     );
  //   } finally {
  //     isLoading(false);
  //   }
  // }

  void startPayment() {
    Get.bottomSheet(
      PaymentSheet(),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    );
  }
}

class PaymentSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Pay with Stripe",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Card Number",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Expiry",
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "CVC",
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.close,
                                  color: AppColors.appPrimaryColor2,
                                ),
                              ),
                            ],
                          ),
                          content: SizedBox(
                            height: 200,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'Assets/Rectangle 772.png',
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 14,
                                      child: Image(
                                        image: AssetImage(
                                          'Assets/Rectangle 792 (Stroke).png',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: -4,
                                      child: Image(
                                        image: AssetImage(
                                          'Assets/Vector 1805 (Stroke).png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                10.verticalSpace,
                                Text(
                                  'Purchase Completed',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff8C8C8C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Pay \$49.99",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
