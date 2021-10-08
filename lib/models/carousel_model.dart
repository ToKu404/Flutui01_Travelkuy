class CarouselModel {
  String image;
  CarouselModel(this.image);
}

var carouselsData = [
  {"image": "assets/images/carousel_flight_discount.png"},
  {"image": "assets/images/carousel_hotel_discount.png"},
  {"image": "assets/images/carousel_covid_discount.png"},
];

List<CarouselModel> carousels =
    carouselsData.map((e) => CarouselModel(e['image'])).toList();
