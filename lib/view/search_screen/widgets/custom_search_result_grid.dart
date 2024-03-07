import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSearchResult extends StatelessWidget {
  CustomSearchResult({super.key, required this.isEven});

  final List imagesList = [
    "https://images.pexels.com/photos/18973615/pexels-photo-18973615/free-photo-of-road-in-mountains.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20318716/pexels-photo-20318716/free-photo-of-a-grassy-field-with-some-tall-grasses.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/18938520/pexels-photo-18938520/free-photo-of-tree-on-a-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20044831/pexels-photo-20044831/free-photo-of-woman-in-white-blouse-posing-with-bay-horse-on-the-stud-farm-paddock.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/13939465/pexels-photo-13939465.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/20339253/pexels-photo-20339253/free-photo-of-woman-wearing-dress-standing-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
  ];
  final bool isEven;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isEven
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          // width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/20330737/pexels-photo-20330737/free-photo-of-white-dog-sitting-on-grass.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          // width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/18053574/pexels-photo-18053574/free-photo-of-a-man-standing-on-a-boardwalk-and-taking-a-picture-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.sizeOf(context).width * .66,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/20349040/pexels-photo-20349040/free-photo-of-train-and-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.sizeOf(context).width * .66,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/20349040/pexels-photo-20349040/free-photo-of-train-and-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          // width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/20330737/pexels-photo-20330737/free-photo-of-white-dog-sitting-on-grass.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          // width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/18053574/pexels-photo-18053574/free-photo-of-a-man-standing-on-a-boardwalk-and-taking-a-picture-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imagesList[index]), fit: BoxFit.cover)),
          ),
        )
      ],
    );
  }
}
