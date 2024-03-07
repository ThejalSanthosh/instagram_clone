import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/core/constants/image_constants.dart';
import 'package:instagram/dummy_db.dart';

class CustomUserPostWidget extends StatefulWidget {
  const CustomUserPostWidget(
      {super.key,
      required this.userName,
      required this.place,
      this.isLIked = false,
      this.verification = true,
      required this.image,
      required this.proPic,
      required this.caption});

  final String userName;
  final String place;
  final bool isLIked;
  final bool verification;
  final List<String> image;
  final String proPic;
  final String caption;
  @override
  State<CustomUserPostWidget> createState() => _CustomUserPostWidgetState();
}

// List postListImages = [
//   "https://images.pexels.com/photos/20414663/pexels-photo-20414663/free-photo-of-a-person-s-hand-is-reaching-out-to-the-sand.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//   "https://images.pexels.com/photos/19760927/pexels-photo-19760927/free-photo-of-road-among-trees.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//   "https://images.pexels.com/photos/20071567/pexels-photo-20071567/free-photo-of-street-photography.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
// ];

int postPageIndex = 1;

class _CustomUserPostWidgetState extends State<CustomUserPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primarWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(widget.proPic),
            ),
            title: Row(
              children: [
                Text(
                  widget.userName,
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
              widget.place,
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
                  itemCount: widget.image.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.image[index]),
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
                      "$postPageIndex/${widget.image.length}",
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
                    widget.isLIked == true
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 25,
                          )
                        : Icon(
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
                          widget.image.length,
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
                  backgroundImage: NetworkImage(widget.proPic),
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
                textAlign: TextAlign.justify,
                text: TextSpan(
                    text: widget.userName,
                    style: TextStyle(
                        color: ColorConstants.primaryBlack,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: widget.caption,
                          style: TextStyle(fontWeight: FontWeight.normal))
                    ])),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: Text(
              "September 7",
              style: TextStyle(
                  color: ColorConstants.primaryBlack.withOpacity(.6),
                  fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
