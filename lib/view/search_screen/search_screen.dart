import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/view/search_screen/widgets/custom_search_result_grid.dart';
import 'package:instagram/view/search_screen/widgets/custom_tab_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.qr_code_scanner)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      10,
                      (index) => CustomTabButton(
                            icon: index.isEven ? Icons.favorite_rounded : null,
                          )),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      3,
                      (index) => CustomSearchResult(
                            isEven: index.isEven,
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
