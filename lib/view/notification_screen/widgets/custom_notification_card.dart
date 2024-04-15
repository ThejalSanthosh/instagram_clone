import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/global_widgets/global_widgets.dart';

class CustomNotificationCard extends StatefulWidget {
  const CustomNotificationCard({super.key});

  @override
  State<CustomNotificationCard> createState() => _CustomNotificationCardState();
}

class _CustomNotificationCardState extends State<CustomNotificationCard> {
  @override
  Widget build(BuildContext context) {
    List profileImages = ["", ""];
    bool isFollow = true;
    bool isAlrreadyFollowing = false;

    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          profileImages.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: ColorConstants.primarWhite,
                          child: CircleAvatar(
                            radius: 16,
                          ),
                        ))
                  ],
                ),
          SizedBox(
            width: 12,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Kareene ",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: "liked your photo ",
                        style: TextStyle(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.6))),
                    TextSpan(
                        text: ".1h",
                        style: TextStyle(
                            color: ColorConstants.primaryBlack.withOpacity(.4)))
                  ])),
          Spacer(),
          isFollow
              ? CustomButton(
                  text: isAlrreadyFollowing ? "Message" : "Follow",
                  textColor: isAlrreadyFollowing
                      ? ColorConstants.primaryBlack
                      : ColorConstants.primarWhite,
                  buttonColor: isAlrreadyFollowing
                      ? Colors.transparent
                      : ColorConstants.primaryBlue,
                  havVBorder: isAlrreadyFollowing,
                )
              : Container(
                  width: 44,
                  height: 44,
                  child: Image.network(
                    "https://images.pexels.com/photos/20450072/pexels-photo-20450072/free-photo-of-hannu.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                    fit: BoxFit.cover,
                  ),
                )
        ],
      ),
    );
  }
}
