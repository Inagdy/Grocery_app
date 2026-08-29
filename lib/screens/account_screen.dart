import 'package:flutter/material.dart';
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
            SizedBox(height: 20.99),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Image.asset(
                    "assests/images/accountImage.png",
                    width: 63.44,
                    height: 64.32,
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
                                fontSize: 20,
                                color: Color(0xff181725),
                              ),
                            ),
                            SizedBox(width: 10.15),
                            SvgPicture.asset(
                              'assests/icons/edit.svg',
                              width: 15,
                              color: Color(0xff53B175),
                            ),
                          ],
                        ),
                        Text(
                          "Imshuvo97@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight(400),
                            fontSize: 16,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 52.23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.58),
              child: CustomButton(
                text: "Log out",
                background: secandBackgroundColor.toString(),
                hasIcon: true,
                iData: Icons.logout,
              ),
            ),
            SizedBox(height: 24.45),
          ],
        ),
      ),
    );
  }
}
