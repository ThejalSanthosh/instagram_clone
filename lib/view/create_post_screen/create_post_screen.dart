import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/view/create_post_screen/widgets/custom_tab_bar.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.primaryBlack),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Recents",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primaryBlack),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: ColorConstants.primaryBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 375,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/20299478/pexels-photo-20299478/free-photo-of-serenity.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                      fit: BoxFit.cover)),
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(.6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.all_inclusive,
                      color: ColorConstants.primarWhite,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(.6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.space_dashboard_outlined,
                      color: ColorConstants.primarWhite,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryBlack.withOpacity(.6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_none_outlined,
                          color: ColorConstants.primarWhite,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Select Multiple",
                          style: TextStyle(
                              color: ColorConstants.primarWhite, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                CustomTabBar(),
                CustomTabBar(),
                CustomTabBar(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: TabBar(
            indicatorWeight: 4,
            dividerHeight: 0,
            labelColor: ColorConstants.primaryBlack,
            unselectedLabelColor: ColorConstants.primaryBlue,
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                text: "Library",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Video",
              )
            ]),
      ),
    );
  }
}
