import 'package:flutter/material.dart';
import 'package:grocery_app/models/product_model.dart';

class HomeBottom extends StatelessWidget {
  final ProductModel productModel;

  const HomeBottom({super.key, required this.productModel });
  static const mainBackgroundColor = Color(0xff53B175);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173.32,
      height: 248.51,
      padding: EdgeInsets.only(top: 25.21, left: 15, right: 14),
      // margin: EdgeInsets.only(right: 15.07),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        border: Border.all(color: Color(0xffE2E2E2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              productModel.image,
              width: 103.43,
              height: 62.56,
            ),
          ),
          SizedBox(height: 25),
          Text(
            productModel.title,
            style: TextStyle(
              fontWeight: FontWeight(400),
              fontSize: 16,
              color: Color(0xff181725),
            ),
          ),
          SizedBox(height: 5),
          Text(
            productModel.descripion,
            style: TextStyle(
              fontWeight: FontWeight(400),
              fontSize: 14,
              color: Color(0xff7C7C7C),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                productModel.price.toString(),
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xff181725),
                ),
              ),
              Container(
                width: 45.67,
                height: 45.67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xff53B175),
                ),
                child: Icon(Icons.add, color: Colors.white, size: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
