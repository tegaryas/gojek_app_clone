import 'package:flutter/material.dart';
import 'package:gojek_home_screen/theme.dart';

class PesananScreen extends StatelessWidget {
  const PesananScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                isScrollable: true,
                labelStyle: titleTextStyle,
                unselectedLabelStyle: titleTextStyle,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                indicatorColor: primaryColor,
                indicatorWeight: 2.5,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      'Riwayat',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Dalam proses',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/pesanan_banner.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Pesan Gojek, yuk!',
                            style: pesananTitleTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Driver kami akan dengan senang hati membantumu.',
                            style: pesananSubtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/pesanan_banner.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Pesan Gojek, yuk!',
                            style: pesananTitleTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Driver kami akan dengan senang hati membantumu.',
                            style: pesananSubtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
