import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gojek_home_screen/main.dart';
import 'package:gojek_home_screen/screens/beranda/beranda_screen.dart';
import 'package:gojek_home_screen/screens/chat/chat_screen.dart';
import 'package:gojek_home_screen/screens/pesanan/pesanan_screen.dart';
import 'package:gojek_home_screen/screens/promo/promo_screen.dart';
import 'package:gojek_home_screen/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: primaryColor,
        flexibleSpace: SafeArea(
          child: getTabBar(),
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: TabBarView(
        controller: _tabController,
        children: [
          BerandaScreen(),
          PromoScreen(),
          PesananScreen(),
          ChatScreen(),
        ],
      ),
    );
  }

  Widget getTabBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: secondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "Beranda",
            ),
            Tab(
              text: "Promo",
            ),
            Tab(
              text: "Pesanan",
            ),
            Tab(
              text: "Chat",
            ),
          ],
          labelStyle: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: Colors.white,
          labelColor: primaryColor,
          indicator: RectangularIndicator(
            color: Colors.white,
            bottomLeftRadius: 100,
            bottomRightRadius: 100,
            topLeftRadius: 100,
            topRightRadius: 100,
          ),
        ),
      ),
    );
  }
}
