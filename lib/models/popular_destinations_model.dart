class PopularDestinationsModel {
  String name;
  String country;
  String image;

  PopularDestinationsModel(this.name, this.country, this.image);
}

var popularsData = [
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/destination_bali.png"
  },
  {
    "name": "Paris",
    "country": "Prancis",
    "image": "assets/images/destination_paris.png"
  },
  {
    "name": "Rome",
    "country": "Italia",
    "image": "assets/images/destination_rome.png"
  },
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/destination_bali.png"
  },
  {
    "name": "Paris",
    "country": "Prancis",
    "image": "assets/images/destination_paris.png"
  },
  {
    "name": "Rome",
    "country": "Italia",
    "image": "assets/images/destination_rome.png"
  },
];

List<PopularDestinationsModel> populars = popularsData
    .map((e) => PopularDestinationsModel(e["name"], e["country"], e["image"]))
    .toList();
