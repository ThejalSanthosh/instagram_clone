import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/core/constants/image_constants.dart';

class CustomUserPostWidget extends StatefulWidget {
  const CustomUserPostWidget({super.key});

  @override
  State<CustomUserPostWidget> createState() => _CustomUserPostWidgetState();
}

List postListImages = [
  "https://images.pexels.com/photos/20414663/pexels-photo-20414663/free-photo-of-a-person-s-hand-is-reaching-out-to-the-sand.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  "https://images.pexels.com/photos/19760927/pexels-photo-19760927/free-photo-of-road-among-trees.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  "https://images.pexels.com/photos/20071567/pexels-photo-20071567/free-photo-of-street-photography.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
];

int postPageIndex = 1;

class _CustomUserPostWidgetState extends State<CustomUserPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primarWhite,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(ImageConstants.proPicJpg),
            ),
            title: Row(
              children: [
                Text(
                  "Thejal Santhosh",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.verified,
                  size: 15,
                  color: ColorConstants.primaryBlue,
                )
              ],
            ),
            subtitle: Text(
              "Kerala,Kannur",
              style: TextStyle(
                  color: ColorConstants.primaryBlack,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
          Stack(
            children: [
              SizedBox(
                height: 375,
                child: PageView.builder(
                  onPageChanged: (value) {
                    postPageIndex = value + 1;
                    setState(() {});
                  },
                  itemCount: postListImages.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(postListImages[index]),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(.6),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      "$postPageIndex/${postListImages.length}",
                      style: TextStyle(color: ColorConstants.primarWhite),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.maps_ugc_rounded,
                      size: 25,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.send,
                      size: 25,
                    )
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          postListImages.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: CircleAvatar(
                                  backgroundColor: (index == postPageIndex - 1)
                                      ? ColorConstants.primaryBlue
                                      : null,
                                  radius: (index == postPageIndex - 1) ? 5 : 3,
                                ),
                              ))),
                ),
                Spacer(),
                Row(
                  children: [Icon(Icons.bookmark_add_outlined)],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 9,
                  backgroundImage: NetworkImage(postListImages[1]),
                ),
                SizedBox(
                  width: 7,
                ),
                RichText(
                    text: TextSpan(
                        text: "Liked by ",
                        style: TextStyle(color: ColorConstants.primaryBlack),
                        children: [
                      TextSpan(
                          text: "Craig_love",
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " and "),
                      TextSpan(
                          text: "44,9990 others",
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontWeight: FontWeight.bold))
                    ]))
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.centerLeft,
            child: RichText(
                text: TextSpan(
                    text: "Thejal Santhosh ",
                    style: TextStyle(
                        color: ColorConstants.primaryBlack,
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: "Hi its a new begining..",
                      style: TextStyle(fontWeight: FontWeight.normal))
                ])),
          )
        ],
      ),
    );
  }
}
