import 'package:flutter/material.dart';

import '../app_style.dart';

class CardShoes extends StatefulWidget {
  const CardShoes({super.key});

  @override
  State<CardShoes> createState() => _CardShoesState();
}

class _CardShoesState extends State<CardShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 180,
          decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              // boxShadow: [
              //   BoxShadow(
              //       color: Color.fromARGB(255, 215, 248, 245),
              //       spreadRadius: 3,
              //       blurRadius: 10,
              //       offset: Offset(2, 4))
              // ]
              ),
          child: Column(
            children: [
              Container(
                height: 112,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Design Name',
                      style: kInterMedium.copyWith(
                        color: kBlack,
                        fontSize: 12
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Rs.20,000.00',
                      style: kInterMedium.copyWith(
                        color: kBlack,
                        fontSize: 12
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Size:6',
                      style: kInterMedium.copyWith(
                        color: kBlack,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 29,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: kBlack)
                        ),
                        child: Center(
                          child: Text(
                            'Buy Now',
                            style: kInterMedium.copyWith(
                              color: kBlack,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
              ],
          ),
        ),
      ),
    );
  }
}
