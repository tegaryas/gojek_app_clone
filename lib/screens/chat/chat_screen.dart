import 'package:flutter/material.dart';
import 'package:gojek_home_screen/main.dart';
import 'package:gojek_home_screen/theme.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText('Pilihan fitur'),
              fiturChat(),
              titleText('Chat kamu'),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        10,
                      ),
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.chat_bubble,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kamu belum chat siapa-siapa',
                            style: bigTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Nanti kalo kamu udah nyapa, disapa, ngitim atau nerima GoPay dari orang, chatnya bakal muncul di sini.',
                            style: subtitleTextStyle,
                          ),
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

  Widget titleText(String title) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Text(
        title,
        style: titleTextStyle,
      ),
    );
  }

  Widget fiturChat() {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          listFiturChat(Icons.email, 'Inbox', Colors.orange),
          listFiturChat(Icons.chat, 'Bantuan', primaryColor),
          listFiturChat(Icons.group, 'Grup baru', primaryColor),
          listFiturChat(Icons.question_answer, 'Patungan', blueColor),
          listFiturChat(Icons.arrow_upward_rounded, 'Bayar', blueColor),
        ],
      ),
    );
  }

  Widget listFiturChat(IconData icon, String title, Color color) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 25,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: normalTextStyle,
          )
        ],
      ),
    );
  }
}
