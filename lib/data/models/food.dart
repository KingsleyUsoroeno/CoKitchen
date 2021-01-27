class Food {
  final List<String> imageUrls;
  final String logoImage;
  final String companyName;
  final String companyDesc;
  final String companyPromoText;

  Food({
    this.imageUrls,
    this.logoImage,
    this.companyName,
    this.companyDesc,
    this.companyPromoText,
  });

  @override
  String toString() {
    return 'Food{imageName: $imageUrls, logoImage: $logoImage, companyName: $companyName, companyDesc: $companyDesc, companyPromoText: $companyPromoText}';
  }
}
