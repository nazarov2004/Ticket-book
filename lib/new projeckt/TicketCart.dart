import 'package:birinchi_dastur/new%20projeckt/app_styles/AppLayout.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/app_style.dart';
import 'package:birinchi_dastur/widget/Thinck_Container.dart';
import 'package:flutter/material.dart';
import '../widget/LyoutBulder.dart';

class TicedCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicedCard({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Stack(
      children: [
        SizedBox(
          width: size.width * 0.90,
          height: 190,
          child: Container(
            margin: const EdgeInsets.only(
              right: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //bu  ko`k  kanteyyner  kodi
                Container(
                  decoration:  BoxDecoration(
                      color: isColor==null ? const Color(0xFF526799):Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21))),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            ticket['Qayerdan']['QisqartmaNomi'],
                           style:isColor==null?  Styles.headLineStyle3
                                .copyWith(color: Colors.white):Styles.headLineStyle3,
                          ),
                          Expanded(child: Container()),
                           const ThinckContainer(isColor: true,),
                          Expanded(
                              child: Stack(
                            children: [
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child:  Icon(
                                    Icons.airplanemode_active,
                                    color: isColor==null? Colors.white:const Color(0XFFBACCF7),
                                  ),

                                ),
                              ),
                              SizedBox(

                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(

                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          9,
                                          (index) =>  SizedBox(
                                                width: 3,
                                                height: 1,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: isColor==null? Colors.white:Colors.white),
                                                ),
                                              )),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )),
                          const ThinckContainer(isColor: null,),
                          Expanded(child: Container()),
                          Text( ticket['Qayerga']['QisqartmaNomi'],

                            style:isColor==null? Styles.headLineStyle3
                                .copyWith(color: Colors.white):Styles.headLineStyle3,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              ticket['Qayerdan']['toliqnomi'],
                              style:isColor==null? Styles.headLineStyle4
                                  .copyWith(color: Colors.white):Styles.headLineStyle4,
                            ),
                          ),
                          Text(
                            ticket['UchishVaqti'],
                            style:isColor==null? Styles.headLineStyle3
                                .copyWith(color: Colors.white):Styles.headLineStyle3,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              ticket['Qayerga']['toliqnomi'],
                              textAlign: TextAlign.end,
                              style: isColor==null? Styles.headLineStyle4
                                  .copyWith(color: Colors.white):Styles.headLineStyle4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //bu oreng  kichik karta  kodi
                Container(
                  color:isColor==null? Styles.arangeColor:Colors.white,
                  child: const Row(
                    children: [
                       SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child:LyoutbulderWidget(sections: 6,isColor: true,)
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                      ),
                    ],
                  ),
                ),
                //bu oreng  katta karta  kodi
                Container(
                  decoration:  BoxDecoration(
                      color:isColor==null? const Color(0xFFF37867):Colors.white,
                      borderRadius:  BorderRadius.only(
                          bottomLeft: Radius.circular(isColor==null?21:00),
                          bottomRight: Radius.circular(isColor==null?21:00))),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticket['UchishSanasi'],
                                style:isColor==null? Styles.headLineStyle3
                                    .copyWith(color: Colors.white):Styles.headLineStyle3,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'KUN',
                                style:isColor==null? Styles.headLineStyle4
                                    .copyWith(color: Colors.white):Styles.headLineStyle4,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ticket['YetibBorishVaqti'],
                                style:isColor==null? Styles.headLineStyle3
                                    .copyWith(color: Colors.white):Styles.headLineStyle3,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Qo`nish vaqti',
                                style:isColor==null? Styles.headLineStyle4
                                    .copyWith(color: Colors.white):Styles.headLineStyle4,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ticket['orin'].toString(),
                                style:isColor==null? Styles.headLineStyle3
                                    .copyWith(color: Colors.white):Styles.headLineStyle3,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "O'rin",
                                style:isColor==null? Styles.headLineStyle4
                                    .copyWith(color: Colors.white):Styles.headLineStyle4,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
