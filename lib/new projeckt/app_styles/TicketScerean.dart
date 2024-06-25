import 'package:birinchi_dastur/new%20projeckt/AppInfo/App_info_list.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/app_style.dart';
import 'package:birinchi_dastur/widget/AppTicketTabs.dart';
import 'package:flutter/material.dart';

import '../../widget/AppColounLyout.dart';
import '../../widget/LyoutBulder.dart';
import '../TicketCart.dart';
import 'AppLayout.dart';

class Ticketscerean extends StatelessWidget {
  const Ticketscerean({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.byColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Text(
                "Chiptalar",
                style: Styles.headLineStyle1,
              ),
              const Apptickettabs(
                  BirinchiYozuv: 'Faol', IkkinchiYozuv: 'Arxiv'),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicedCard(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,vertical: 5
                ),
                color: Colors.white,
                child:
                    Column(
                      children: [
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Appcolounlyout(
                                BirinchiText: 'Chipta Kodi',
                                IkkichiText: "Yo'lovchi",
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              Appcolounlyout(
                                BirinchiText: '256458974568',
                                IkkichiText: "pasport",
                                crossAxisAlignment: CrossAxisAlignment.end,
                              ),
                            ]),
                        const SizedBox(height: 20,),
                        const LyoutbulderWidget(sections: 15,isColor: false,wiht: 5,),
                        const SizedBox(height: 20,),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Appcolounlyout(
                                BirinchiText: '0569 5487805',
                                IkkichiText: "Number of E-ticked",
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              Appcolounlyout(
                                BirinchiText: '13464',
                                IkkichiText: "Booking code",
                                crossAxisAlignment: CrossAxisAlignment.end,
                              ),
                            ]),
                        const SizedBox(height: 10,),
                        const LyoutbulderWidget(sections: 15,isColor: false,wiht: 5,),
                        const SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/apps.jpg",scale: 11,),
                                  Text('*** 6771',style: Styles.headLineStyle3)
                                ],
                              ),
                              const SizedBox(height: 2,),
                              Text('To\'lov ususli',style: Styles.headLineStyle4.copyWith(color: Colors.grey),),
                            ],
                          ),
                          const Appcolounlyout(
                            BirinchiText: '\$30',
                            IkkichiText: "Narxi",
                            crossAxisAlignment: CrossAxisAlignment.end,
                          ),
                        ],),
                        const SizedBox(height: 1,),
                        //Barcode    cod  yozilishi  kerak  bar cod  pab  get  qilimagan 5:40 min
                      ],
                    ),






              ),

            ],

          ),
        ],
      ),
    );
  }
}
