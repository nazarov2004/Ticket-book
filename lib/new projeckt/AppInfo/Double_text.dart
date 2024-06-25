


import 'package:flutter/material.dart';

import '../app_styles/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String KattaYozuv;
  final String KichikYozuv;
  const AppDoubleTextWidget({super.key,required this.KattaYozuv,required this.KichikYozuv});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          KattaYozuv,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
           KichikYozuv,
            style: Styles.textStyle
                .copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}
