import 'package:flutter/material.dart';

class ThinckContainer extends StatelessWidget {
  const ThinckContainer({super.key,this.isColor});
final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color:isColor==null? Colors.white:const Color(0xFFBACCF2))),
    );
  }
}
