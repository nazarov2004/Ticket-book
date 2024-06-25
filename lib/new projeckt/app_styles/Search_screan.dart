import 'package:birinchi_dastur/new%20projeckt/AppInfo/Double_text.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/AppLayout.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/app_style.dart';
import 'package:birinchi_dastur/widget/AppTicketTabs.dart';
import 'package:flutter/material.dart';

class SearchScrean extends StatelessWidget {
  const SearchScrean({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.byColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'Qayerga\nBornoqchisiz?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 10,
          ),
          const Apptickettabs(BirinchiYozuv: 'Parvoz chiptalari', IkkinchiYozuv: 'Mehmonxonalar'),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
            child: Row(
              children: [
                const Icon(
                  Icons.airplane_ticket_sharp,
                  color: Color(0XFFBFC2DF),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Jo`nash',
                  style: Styles.textStyle,
                )
              ],
            ),
          ), //Jo`nash
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
            child: Row(
              children: [
                const Icon(
                  Icons.airplane_ticket,
                  color: Color(0XFFBFC2DF),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Qo`nish',
                  style: Styles.textStyle,
                )
              ],
            ),
          ), //qo'nish
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){print('object');},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigoAccent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Mavjud Chiptalar',
                    style: Styles.textStyle
                        .copyWith(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ), //Kok knopka
          const SizedBox(
            height: 20,
          ),
          const AppDoubleTextWidget(
            KattaYozuv: "Qo'shimcha",
            KichikYozuv: "Ko'proq",
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 410,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.shade200)],
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/apps.jpg'))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hoziroq 20 % chegirmaga ega bo'ling",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),//rasimli ramka]
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: size.width * 0.44,
                      decoration: BoxDecoration(
                          color: Color(0xFF3ABBBB),
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sayohat qil',
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10,),
                          Text('Ko`rsatiladigan xizmatlar va yangiliklarni bilib olishingiz mumkin.', style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18),),
                        ],
                      ),
                    ),
                   Positioned(right: -45,
                     top: -40,
                     child:  Container(
                     padding: const EdgeInsets.all(30),
                     decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border:Border.all(width: 18,color:const Color(0xFF189999) ),
                         color: Colors.transparent
                     ),
                   ),)
                  ],
                ),
                  const SizedBox(height: 10,),
                  InkWell(onTap: (){print('sdkshk');},
                    child: Container(height: 200,
                      width: size.width * 0.44,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEC6545),
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Column(
                        children: [
                          Text('Take Love',style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight:FontWeight.bold ),textAlign: TextAlign.center ,),
                       const SizedBox(height: 5,),
                          RichText(text: const TextSpan(children:[
                            TextSpan(text: '😍',style:TextStyle(fontSize: 30)),
                            TextSpan(text: '🥰',style:TextStyle(fontSize: 45)),
                            TextSpan(text: '😘',style:TextStyle(fontSize: 30)),
                    
                    
                          ] ))
                    
                        ],
                      ),
                    
                    ),
                  )
                ],
              )
            ],
          ) ,
        ],
      ),
    );
  }
}
