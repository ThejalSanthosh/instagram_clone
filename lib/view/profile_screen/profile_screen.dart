import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/core/constants/image_constants.dart';
import 'package:instagram/global_widgets/global_widgets.dart';
import 'package:instagram/view/search_screen/widgets/custom_search_result_grid.dart';
import 'package:instagram/view/search_screen/widgets/custom_tab_button.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  var currentTabIndex = 0;

  final List imagesList = [
    "https://images.pexels.com/photos/18973615/pexels-photo-18973615/free-photo-of-road-in-mountains.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20318716/pexels-photo-20318716/free-photo-of-a-grassy-field-with-some-tall-grasses.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/18938520/pexels-photo-18938520/free-photo-of-tree-on-a-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20044831/pexels-photo-20044831/free-photo-of-woman-in-white-blouse-posing-with-bay-horse-on-the-stud-farm-paddock.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/13939465/pexels-photo-13939465.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20339253/pexels-photo-20339253/free-photo-of-woman-wearing-dress-standing-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/18973615/pexels-photo-18973615/free-photo-of-road-in-mountains.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20318716/pexels-photo-20318716/free-photo-of-a-grassy-field-with-some-tall-grasses.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/18938520/pexels-photo-18938520/free-photo-of-tree-on-a-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20044831/pexels-photo-20044831/free-photo-of-woman-in-white-blouse-posing-with-bay-horse-on-the-stud-farm-paddock.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/13939465/pexels-photo-13939465.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20339253/pexels-photo-20339253/free-photo-of-woman-wearing-dress-standing-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  ];

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [
              Icon(
                Icons.lock,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "__t.j._",
                style: TextStyle(
                    color: ColorConstants.primaryBlack,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.keyboard_arrow_down_sharp)
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundColor:
                              ColorConstants.primaryBlack.withOpacity(.1),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage(ImageConstants.proPicJpg),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Text(
                              "54",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        Column(
                          children: [
                            Text(
                              "889",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            Text(
                              "599",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Thejal Santhosh",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      text: "Edit Profile",
                      buttonColor: ColorConstants.primarWhite,
                      textColor: ColorConstants.primaryBlack,
                      havVBorder: true,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor:
                                    ColorConstants.primaryBlack.withOpacity(.1),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: ColorConstants.primarWhite,
                                  child: IconButton(
                                      onPressed: () {}, icon: Icon(Icons.add)),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("New"),
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Row(
                            children: List.generate(
                              4,
                              (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 32,
                                        backgroundColor: ColorConstants
                                            .primaryBlack
                                            .withOpacity(.1),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                              "https://images.pexels.com/photos/20424751/pexels-photo-20424751/free-photo-of-two-women-are-sitting-on-the-grass-taking-pictures.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text("Design"),
                                      SizedBox(
                                        width: 18,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
              ),
              TabBar(
                  onTap: (value) {
                    setState(() {
                      widget.currentTabIndex = value;
                    });
                  },
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 1,
                  unselectedLabelColor:
                      ColorConstants.primaryBlack.withOpacity(.4),
                  labelColor: ColorConstants.primaryBlack,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_rounded),
                    )
                  ]),
              // TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              //   CustomSearchResult(isEven: true),
              //   CustomSearchResult(isEven: false)
              // ])

              widget.currentTabIndex == 0
                  ? GridView.builder(
                      shrinkWrap: true,
                      itemCount: 12,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.imagesList[index]),
                                fit: BoxFit.cover)),
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.imagesList[index]),
                                fit: BoxFit.cover)),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
