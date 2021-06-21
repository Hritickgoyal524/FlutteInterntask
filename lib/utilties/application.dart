class App{
  final String imgurl;
  final String placename;
  final String nooflight;

  App({this.imgurl, this.placename, this.nooflight});
}

List <App> item=[App(
  imgurl:"Assets/bed.svg",
  placename: "Bed room",
  nooflight:"4 Lights"
),
App(imgurl: "Assets/room.svg",
placename:"Living room",
nooflight:"2 Lights"
),
App(imgurl: "Assets/kitchen.svg",
placename:"Kitchen",
nooflight:"5 Lights"
),

App(imgurl: "Assets/bathtube.svg",
placename:"Bath room",
nooflight:"1 Light"
),

App(imgurl: "Assets/house.svg",
placename:"Outdoor",
nooflight:"5 Lights"
),
App(imgurl:"Assets/balcony.svg",
placename:"Balcony",
nooflight:"2 Lights"
),

];