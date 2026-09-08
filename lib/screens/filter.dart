
import 'package:flutter/material.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/custom_check_box.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool eggs = false;
  bool noodlesPasta = false;
  bool chipsCrisps = false;
  bool fastFood = false;

  bool individualCollection = false;
  bool cocola = true;
  bool ifad = false;
  bool kaziFarmas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.01),
                child: Row(
                  children: const [
                    Icon(Icons.close),
      
                    Expanded(
                      child: Center(
                        child: Text(
                          "Filters",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                  ],
                ),
              ),
              const SizedBox(height: 31.18),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 25.01 ,right: 25.01),
                  decoration: const BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Column(
                        children: [
                          CustomCheckbox(ischecked: eggs, title: "Eggs"),
                          CustomCheckbox(
                            ischecked: noodlesPasta,
                            title: "Noodles & Pasta",
                          ),
                          CustomCheckbox(
                            ischecked: chipsCrisps,
                            title: "Chips & Crisps",
                          ),
                          CustomCheckbox(ischecked: fastFood, title: "Fast Food"),
                        ],
                      ),
                      SizedBox(height: 40),
                      const Text(
                        "Brand",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
      
                      Column(
                        children: [
                          CustomCheckbox(
                            ischecked: individualCollection,
                            title: "Individual Callection",
                          ),
                          CustomCheckbox(ischecked: cocola, title: "Cocola"),
                          CustomCheckbox(ischecked: ifad, title: "Ifad"),
                          CustomCheckbox(
                            ischecked: kaziFarmas,
                            title: "Kazi Farmas",
                          ),
                        ],
                      ),
                      Expanded(child: Spacer()),
                      CustomButton(
                        text: 'Apply Filter',
                        background: '0xff53B175',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
