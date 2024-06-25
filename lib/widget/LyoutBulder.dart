import 'package:flutter/material.dart';

class LyoutbulderWidget extends StatelessWidget {
  const LyoutbulderWidget({super.key,this.isColor,required this.sections,this.wiht});
  final bool? isColor;
  final int  sections;
  final double? wiht;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / 15)
                    .floor(),
                    (index) =>  SizedBox(
                  width: 5,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor==null?Colors.white:Colors.grey),
                  ),
                )));
      },
    );
  }
}
