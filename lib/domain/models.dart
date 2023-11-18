class SliderObject {
  String subTitle;
  String image;
  SliderObject(this.subTitle, this.image);
}

class SliderViewObject {
  SliderObject sliderObject;
  int numberSlides;
  int currentIndex;
  SliderViewObject(this.sliderObject, this.numberSlides, this.currentIndex);
}

class annonce {
  final String image;
  final String name;

  annonce({required this.image, required this.name});
}
class Course {
  final String courseName;
  final String detail;
  final String date;
  final String image;
  Course({
    required this.courseName,
    required this.date,
    required this.image,
    required this.detail,
  });
}

class infos {
  late final String image;
  late final String name;
}
class Product {
  final String image;
  final String nameCategorie;

  final String nameProduct;
  final String dose;

  Product({
    required this.image,
    required this.nameCategorie,
    required this.nameProduct,
    required this.dose,
  });
}