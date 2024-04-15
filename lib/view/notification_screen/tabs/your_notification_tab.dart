import 'package:flutter/cupertino.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/view/notification_screen/widgets/custom_card_builder.dart';

class YourNotificationTab extends StatefulWidget {
  const YourNotificationTab({super.key});

  @override
  State<YourNotificationTab> createState() => _YourNotificationTabState();
}

class _YourNotificationTabState extends State<YourNotificationTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(.1)))),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Text(
              "Follow Requests",
              style:
                  TextStyle(fontSize: 15, color: ColorConstants.primaryBlack),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CustomCardBuilder(
              itemCount: index + 1,
            ),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}
