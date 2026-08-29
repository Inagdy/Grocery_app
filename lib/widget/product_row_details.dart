import 'package:flutter/material.dart';

class ProductRowDetails extends StatefulWidget {
  final String textdata;
  final String? description;
  final int? starCount;

  const ProductRowDetails({
    super.key,
    required this.textdata, this.description,
    this.starCount
  });

  @override
  State<ProductRowDetails> createState() => _ProductRowDetailsState();
}

class _ProductRowDetailsState extends State<ProductRowDetails> {
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,top: 18.5 ,bottom: 16.95),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.textdata,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff181725),
                  ),
                ),
              ),
              if(widget.textdata =="Review")...[
              Row(
                children: List.generate(
                  widget.starCount ?? 0,
                  (index) => const Icon(
                    Icons.star,
                    color: Color(0xffF3603F),
                    size: 20,
                  ),
                ),
              ),
              ]else if(widget.textdata =="Nutritions" )...[
                Container(
                  width: 33.61,
                  height: 18,
                  decoration: BoxDecoration(
                  color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                    alignment: Alignment.center,

                  child: Text(
                    "100gr",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                )
              ],
              IconButton(
                onPressed: () {
                  setState(() {
                    showDescription = !showDescription;
                  });
                },
                icon: Icon(
                  showDescription
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_right,
                  size: 32,
                  color: const Color(0xff181725),
                ),
              ),
            ],
          ),
          if (showDescription && (widget.description?.isNotEmpty ?? false)) ...[
            const SizedBox(height: 10),
            Text(
              widget.description ?? '',
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Color(0xff7C7C7C),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ],
      ),
    );
  }
}

