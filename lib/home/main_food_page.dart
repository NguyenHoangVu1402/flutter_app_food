import 'package:flutter/material.dart';
import 'package:flutter_app_food/home/food_page_body.dart';
import 'package:flutter_app_food/utils/colors.dart';
import 'package:flutter_app_food/widgets/big_text.dart';
import 'package:flutter_app_food/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Hiển thị tiêu đề
          Container(
      child: Container(
        margin: EdgeInsets.only(top: 45, bottom: 15),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "Việt Nam", color: AppColors.mainColor,),
                Row(
                  children: [
                    SmallText(text: "Hồ Chí Minh", color: Colors.black54,),
                    Icon(Icons.arrow_drop_down_rounded),
                  ],
                )
              ],
            ),
            Center(
              child: Container(
                width: 45,
                height: 45,
                child: Icon(Icons.search, color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    //Hiển thị phần thân
    FoodPageBody(),
        ],
      ),
    );
  }
}
