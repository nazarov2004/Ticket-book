import 'package:birinchi_dastur/new%20projeckt/app_styles/AppLayout.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/app_style.dart';
import 'package:flutter/material.dart';

class HotelSearch extends StatelessWidget {
  final  Map<String, dynamic> hotel;
  const HotelSearch({
    super.key, required this.hotel
  });


  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/${hotel['image']}' // hotel rasimalri
                        ))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Tashrif buyurish",
            style: Styles.headLineStyle2.copyWith(color: Styles.KakiColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "\$ ${hotel['narxi']} /kecha",
            style: Styles.headLineStyle1.copyWith(color: Styles.KakiColor),
          ),
        ],
      ),
    );
  }
}
