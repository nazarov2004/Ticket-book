import 'package:birinchi_dastur/new%20projeckt/app_styles/app_style.dart';
import 'package:birinchi_dastur/widget/AppColounLyout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrifileScrean extends StatelessWidget {
  const PrifileScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 86,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/ICONAPP.jpg")))),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(' Ticked Shop',style: Styles.headLineStyle3.copyWith(fontSize: 26,fontWeight: FontWeight.bold),),
                  SizedBox(height: 3,),
                  Text('   Bukhara',style: Styles.headLineStyle3.copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500),),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                        color:const Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color:Color(0xFF526799)
                          ),
                          child:Icon(Icons.shield,color: Colors.white,),
                        ),
                        const Text("  Asosiy Status  ",style: TextStyle(color: Color(0xFF526799),fontWeight: FontWeight.w600),)
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(onTap: (){},
                      child: Text("Chiqish",style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),))
                ],
              )
            ],
          ),
          const SizedBox(height: 8,),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 8,),
          Stack(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Styles.primaryColor  ,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
             Positioned(
               right: -45,
                 top: -40,

                 child:  Container(
               padding: const EdgeInsets.all(30),
               decoration: BoxDecoration(
                 color:Colors.transparent ,
                   shape: BoxShape.circle,
                   border: Border.all(width: 18,color:const Color(0xFF264CD2) )
               ),
             )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal:25,vertical: 15 ),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lightbulb_rounded,color: Styles.primaryColor,size: 27,),
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Siz zo\'r tanlov  qiling',style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text('Sizda 98 uchish  imkonyati bor',style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,fontSize :16,color : Colors.white.withOpacity(0.6)),),

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8,),
          Text('Yig\'ilgan  millar',style: Styles.headLineStyle2,),
          const SizedBox(height: 8,),
          Center(
            child: Text('654654',style: Styles.textStyle.copyWith(fontWeight:FontWeight.w600,fontSize: 40)),

          ),
          const SizedBox(height: 8,),

          Row(mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
            Text('Yig\'ilgan  millar',style: Styles.headLineStyle4.copyWith(fontSize:16,color: Colors.grey ),),
            Text('11 IYUL 2024',style: Styles.headLineStyle4.copyWith(fontSize:16,color: Colors.grey ),)
          ],),
          Divider(color: Colors.grey.shade300,),
          const SizedBox(height: 8,),

          const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Appcolounlyout(BirinchiText: '27 892', IkkichiText: 'Millar', crossAxisAlignment: CrossAxisAlignment.start,),
              Appcolounlyout(BirinchiText: 'AirLine Go', IkkichiText: 'Tomondan berildi', crossAxisAlignment: CrossAxisAlignment.end,),

            ],
          ),
          const SizedBox(height: 8,),
          const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Appcolounlyout(BirinchiText: '5 007', IkkichiText: 'Millar', crossAxisAlignment: CrossAxisAlignment.start,),
              Appcolounlyout(BirinchiText: 'AirLine Go', IkkichiText: 'Tomondan berildi', crossAxisAlignment: CrossAxisAlignment.end,),

            ],
          ),
          const SizedBox(height: 8,),
          const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Appcolounlyout(BirinchiText: '2 989', IkkichiText: 'Millar', crossAxisAlignment: CrossAxisAlignment.start,),
              Appcolounlyout(BirinchiText: 'AirLine Go', IkkichiText: 'Tomondan berildi', crossAxisAlignment: CrossAxisAlignment.end,),

            ],
          ),
          const SizedBox(height: 10,),

          Center(
            child: InkWell(
              onTap: (){},
              child: Text('Qanday qilib ko\'p mil yig\'ish mumkin?'),
            ),
          )



        ],
      ),
    );
  }
}
