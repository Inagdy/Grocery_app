import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/widget/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/contact_details.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  static const secandBackgroundColor = 0xffF2F3F2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.99.vertical,
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Image.asset(
                    "assests/images/accountImage.png",
                    width: 63.44.w,
                    height: 64.32.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Afsar Hossen",
                              style: TextStyle(
                                fontWeight: FontWeight(400),
                                fontSize: 20.sp,
                                color: Color(0xff181725),
                              ),
                            ),
                            10.15.horizontal,
                            SvgPicture.asset(
                              'assests/icons/edit.svg',
                              width: 15.w,
                              color: Color(0xff53B175),
                            ),
                          ],
                        ),
                        Text(
                          "Imshuvo97@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight(400),
                            fontSize: 16.sp,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            30.vertical,
            Divider(),
            ContactDetails(
              icon: Icons.breakfast_dining_outlined,
              dataText: 'Orders',
            ),
            ContactDetails(
              icon: Icons.contact_emergency_outlined,
              dataText: 'My Details',
            ),
            ContactDetails(
              icon: Icons.location_on_outlined,
              dataText: 'Delivery Address',
            ),
            ContactDetails(
              icon: Icons.credit_card_outlined,
              dataText: 'Payment Methods',
            ),
            ContactDetails(icon: Icons.sell_outlined, dataText: 'Promo Card'),
            ContactDetails(
              icon: Icons.notifications_outlined,
              dataText: 'Promo Cord',
            ),
            ContactDetails(icon: Icons.help_outline, dataText: 'Notifecations '),
            ContactDetails(icon: Icons.info_outline, dataText: 'Help '),
            52.23.vertical,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.58),
              child: CustomButton(
                onPressed: () {
                                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
                text: "Log out",
                background: secandBackgroundColor.toString(),
                hasIcon: true,
                iData: Icons.logout,
              ),
            ),
            24.45.vertical,
          ],
        ),
      ),
    );
  }
}
