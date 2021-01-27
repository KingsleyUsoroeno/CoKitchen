import 'package:cokitchen_assessment/utils/image_util.dart';

import 'food.dart';

List<Food> foods = [
  Food(
    imageUrls: [ImageUtil.img_christmas_and_chicken, ImageUtil.imgMamaPut, ImageUtil.imgBurger],
    logoImage: ImageUtil.dollofFoodLogo,
    companyName: "Jollof & Co.",
    companyDesc: "Delicious everyday Naija food",
    companyPromoText: "Items as low as ₦500",
  ),
  Food(
    imageUrls: [ImageUtil.imgMamaPut, ImageUtil.imgBurger, ImageUtil.img_christmas_and_chicken],
    logoImage: ImageUtil.dollofFoodLogo,
    companyName: "Mama Put",
    companyDesc: "Authentic Native Nigerian food",
    companyPromoText: "Items as low as ₦500",
  ),
  Food(
    imageUrls: [ImageUtil.imgPizza, ImageUtil.imgMamaPut, ImageUtil.img_christmas_and_chicken, ImageUtil.imgBurger],
    logoImage: ImageUtil.imgPizzaLogo,
    companyName: "Papa's Pizza",
    companyDesc: "Original wood fired pizza",
    companyPromoText: "Items as low as ₦700",
  ),
  Food(
    imageUrls: [ImageUtil.imgBurger, ImageUtil.imgPizza, ImageUtil.imgMamaPut, ImageUtil.img_christmas_and_chicken, ImageUtil.imgBurger],
    logoImage: ImageUtil.imgBurgerLogo,
    companyName: "Burger shop",
    companyDesc: "Delicious gourmet burgers & sides",
    companyPromoText: "Items as low as ₦600",
  ),
  Food(
    imageUrls: [ImageUtil.img_pasta, ImageUtil.imgBurger, ImageUtil.imgMamaPut, ImageUtil.img_christmas_and_chicken, ImageUtil.imgBurger],
    logoImage: ImageUtil.img_pasta_logo,
    companyName: "Pasta Factory",
    companyDesc: "Savoury pasta mixes",
    companyPromoText: "Items as low as ₦450",
  ),
];
