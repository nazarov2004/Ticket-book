import 'package:flutter/material.dart';

import '../new projeckt/app_styles/app_style.dart';

class Appcolounlyout extends StatelessWidget {
  final String BirinchiText;
  final String IkkichiText;
  final  CrossAxisAlignment  crossAxisAlignment;
  const Appcolounlyout(
      {super.key,
      required this.BirinchiText,
      required this.IkkichiText,
      required this. crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment:  crossAxisAlignment,
        children: [
      Text(
        BirinchiText,
        style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        IkkichiText,
        style: Styles.headLineStyle3.copyWith(color: Colors.grey),
      )
    ]);
  }
}
