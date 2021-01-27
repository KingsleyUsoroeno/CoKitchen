import 'package:cokitchen_assessment/data/models/foods.dart';
import 'package:cokitchen_assessment/ui/components/coupon_layout.dart';
import 'package:cokitchen_assessment/ui/components/custom_food_layout.dart';
import 'package:cokitchen_assessment/ui/components/custom_search_view.dart';
import 'package:cokitchen_assessment/ui/theme/text_style.dart';
import 'package:cokitchen_assessment/utils/image_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time, size: 15.0),
                    SizedBox(width: 10),
                    Text("Deliver now, to", style: normalTextStyle),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "53 Awolowo Road, Ikoyi",
                      style: mediumTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SvgPicture.asset(ImageUtil.icImgExpand),
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF3F4F6)),
                      child: Center(
                        child: SvgPicture.asset(ImageUtil.ic_person),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomSearchView(
                        hint: "What are you craving?",
                        enabledOnTextChange: true,
                        showSearchCallback: (query) {},
                      ),
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(ImageUtil.ic_moris)
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Est. delivery time: 35mins",
                      style: normalTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Your first delivery is FREE!",
                      style: normalTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                Container(
                  width: double.infinity,
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, int index) => CouponLayout(imageUrl: ImageUtil.img_christmas_coupon),
                  ),
                ),
                SizedBox(height: 20),
                Text("Featured", style: mediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                _buildFeaturedItems(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedItems() {
    final layout = List.generate(
      foods.length,
      (index) => CustomFoodLayout(
        food: foods[index],
      ),
    );
    return Column(
      children: layout,
    );
  }
}
