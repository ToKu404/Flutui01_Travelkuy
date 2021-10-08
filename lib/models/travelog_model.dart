class TravelogModel {
  String name;
  String content;
  String place;
  String image;

  TravelogModel(this.name, this.content, this.place, this.image);
}

var travlogsData = [
  {
    "name": "\"Yogyakarta!\"",
    "content":
        "Halo guys, David di sini dengan Travelkuy!! di Yogyakarta!! Mengunjungi alamnya dan mencari tahu tempat jual gadget oke, hehe...",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyakarta.png"
  },
  {
    "name": "\"Tokyo!\"",
    "content":
        "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.png"
  },
  {
    "name": "\"Yogyakarta!\"",
    "content":
        "Halo guys, David di sini dengan Travelkuy!! di Yogyakarta!! Mengunjungi alamnya dan mencari tahu tempat jual gadget oke, hehe...",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyakarta.png"
  },
  {
    "name": "\"Tokyo!\"",
    "content":
        "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.png"
  },
  {
    "name": "\"Yogyakarta!\"",
    "content":
        "Halo guys, David di sini dengan Travelkuy!! di Yogyakarta!! Mengunjungi alamnya dan mencari tahu tempat jual gadget oke, hehe...",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyakarta.png"
  },
  {
    "name": "\"Tokyo!\"",
    "content":
        "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.png"
  },
];

List<TravelogModel> travlogs = travlogsData
    .map((e) => TravelogModel(e["name"], e["content"], e["place"], e["image"]))
    .toList();
