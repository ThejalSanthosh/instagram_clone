import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/view/notification_screen/tabs/your_notification_tab.dart';
import 'package:instagram/view/notification_screen/widgets/custom_card_builder.dart';
import 'package:instagram/view/notification_screen/widgets/custom_notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: ColorConstants.primaryBlack,
                  labelColor: ColorConstants.primaryBlack,
                  indicatorWeight: 1,
                  tabs: [
                    Tab(
                      text: "Following",
                    ),
                    Tab(
                      text: "You",
                    )
                  ])),
        ),
        body: TabBarView(
          children: [
            Container(
              color: ColorConstants.normalOrange,
            ),
            Container(
              child: YourNotificationTab(),
            )
          ],
        ),
      ),
    );
  }
}
