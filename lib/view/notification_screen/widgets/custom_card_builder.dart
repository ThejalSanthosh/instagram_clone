import 'package:flutter/cupertino.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/view/notification_screen/widgets/custom_notification_card.dart';

class CustomCardBuilder extends StatelessWidget {
  const CustomCardBuilder({super.key, required this.itemCount});
   final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: ColorConstants.primaryBlack.withOpacity(.1)))),
      padding: EdgeInsets.only(left: 16, right: 16, top: 13),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New",
            style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children: List.generate(itemCount, (index) => CustomNotificationCard()),
          )
        ],
      ),
    );
  }
}
