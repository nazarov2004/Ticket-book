import 'package:birinchi_dastur/new%20projeckt/AppInfo/App_info_list.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/Hotel_search.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/app_style.dart';
import 'package:flutter/material.dart';
import 'package:birinchi_dastur/new projeckt/TicketCart.dart';

import '../AppInfo/Double_text.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key, required hotel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.byColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ), //56 daqiqa

                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Ticket',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/ICONAPP.jpg'))),
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade50),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0xFFBFC205),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Qidiruv",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppDoubleTextWidget(KattaYozuv: 'Reyslar', KichikYozuv: 'Ko\'proq')
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((Singilticket) => TicedCard(ticket: Singilticket,))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:const AppDoubleTextWidget(KattaYozuv: "Mehmonxonalar",KichikYozuv: "Ko'proq",)
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((SingilHotel) => HotelSearch(hotel: SingilHotel))
                    .toList()),
          ),
        ],
      ),
    ); //3:00
  }
}
