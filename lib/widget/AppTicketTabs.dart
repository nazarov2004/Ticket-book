import 'package:birinchi_dastur/new%20projeckt/app_styles/AppLayout.dart';
import 'package:flutter/material.dart';

class Apptickettabs extends StatelessWidget {

  final String BirinchiYozuv;
  final String IkkinchiYozuv;
  const Apptickettabs({super.key,required this.BirinchiYozuv,required this.IkkinchiYozuv});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xFFF4F6F0)),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 190,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                  borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(100)),
                  color: Colors.white),
              child:  Center(
                child: Text(BirinchiYozuv),
              ),
            ),
            Container(
              height: 30,
              width: 190,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(100)),
                  color: Colors.transparent),
              child:  Center(
                child: Text(IkkinchiYozuv),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
