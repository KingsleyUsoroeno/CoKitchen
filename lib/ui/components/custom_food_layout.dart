import 'package:cokitchen_assessment/data/models/food.dart';
import 'package:cokitchen_assessment/ui/theme/text_style.dart';
import 'package:cokitchen_assessment/utils/pallet.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomFoodLayout extends StatefulWidget {
  final Food food;

  CustomFoodLayout({this.food});

  @override
  _CustomFoodLayoutState createState() => _CustomFoodLayoutState();
}

class _CustomFoodLayoutState extends State<CustomFoodLayout> {
  PageController _controller = PageController(initialPage: 0);
  int _pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 288,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 189,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: this.widget.food.imageUrls.length,
                      onPageChanged: (int) {
                        setState(() {
                          this._pageNumber = int;
                        });
                      },
                      itemBuilder: (_, int index) {
                        final String imageUrl = widget.food.imageUrls[index];
                        return Image.asset(
                          imageUrl,
                          height: 189,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    right: 1.0,
                    child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 1.0,
                    right: 0.5,
                    left: 0.5,
                    child: Align(
                      alignment: Alignment.center,
                      child: DotsIndicator(
                        dotsCount: this.widget.food.imageUrls.length,
                        position: _pageNumber.toDouble(),
                        decorator: DotsDecorator(
                          color: Colors.white, // Inactive color
                          activeColor: Pallet.lightGray,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        this.widget.food.logoImage,
                        width: 42,
                        height: 42,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(this.widget.food.companyName, style: mediumTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
                          Text(
                            this.widget.food.companyDesc,
                            style: normalTextStyle.copyWith(color: Pallet.textColor, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            this.widget.food.companyPromoText,
                            style: normalTextStyle.copyWith(color: Pallet.textColor, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    iconSize: 16,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios, size: 16, color: Pallet.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
