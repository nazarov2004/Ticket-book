import 'package:birinchi_dastur/new%20projeckt/app_styles/HomeScrean.dart';
import 'package:birinchi_dastur/new%20projeckt/app_styles/TicketScerean.dart';
import 'package:flutter/material.dart';
import 'app_styles/Prifile_screan.dart';
import 'app_styles/Search_screan.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _SelectedIndex = 0;
  static final List<Widget> _wdgetOpetion = <Widget>[
    const HomeScrean(
      hotel: {},
    ),
    const SearchScrean(),
    const Ticketscerean(),
    const PrifileScrean()
  ];

  void _onItemTab(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.lightBlueAccent),
        title: const Text(
          "Ticket Shop",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(child: _wdgetOpetion[_SelectedIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: _onItemTab,
        backgroundColor: Colors.blue,
        buttonBackgroundColor: Colors.blueAccent,
        color: Colors.white38,
        items: const [
          Icon(Icons.home,),
          Icon(Icons.search),
          Icon(Icons.airplane_ticket_outlined),
          Icon(Icons.perm_identity_outlined),
        ],
      )
    );
  }
}
