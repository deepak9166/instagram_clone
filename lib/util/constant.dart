const double appPedding = 20;
var linktest =
    "https://www.sita.aero/globalassets/images/solutions/sita-for-aircraft.jpg?width=500&height=334&mode=crop";
var linkTest2 =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-6-t7lKyeEPkRgHLgT3-__zbibeFFxEP58A&usqp=CAU";
List postlinksList = [
  "https://cache.desktopnexus.com/thumbseg/1978/1978299-bigthumbnail.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTec3DIbFRPiSOFtwEU-2egd51jy7u7OtLrNubOSqQAPr_rxe0Ba7UH_AsmdTgEGDPwMWg&usqp=CAU",
  "https://www.tourmyindia.com/images/mehrangarh-fort-1.jpg",
  "https://blog.depositphotos.com/wp-content/uploads/2017/07/Soothing-nature-backgrounds-2.jpg.webp",
  "https://www.teahub.io/photos/full/13-139570_cool-nature-background-wallpapers-hd.jpg",
  "https://cache.desktopnexus.com/thumbseg/1978/1978299-bigthumbnail.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTec3DIbFRPiSOFtwEU-2egd51jy7u7OtLrNubOSqQAPr_rxe0Ba7UH_AsmdTgEGDPwMWg&usqp=CAU",
  "https://www.tourmyindia.com/images/mehrangarh-fort-1.jpg",
  "https://blog.depositphotos.com/wp-content/uploads/2017/07/Soothing-nature-backgrounds-2.jpg.webp",
  "https://www.teahub.io/photos/full/13-139570_cool-nature-background-wallpapers-hd.jpg",
  "https://cache.desktopnexus.com/thumbseg/1978/1978299-bigthumbnail.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTec3DIbFRPiSOFtwEU-2egd51jy7u7OtLrNubOSqQAPr_rxe0Ba7UH_AsmdTgEGDPwMWg&usqp=CAU",
  "https://www.tourmyindia.com/images/mehrangarh-fort-1.jpg",
  "https://blog.depositphotos.com/wp-content/uploads/2017/07/Soothing-nature-backgrounds-2.jpg.webp",
  "https://www.teahub.io/photos/full/13-139570_cool-nature-background-wallpapers-hd.jpg",
  "https://cache.desktopnexus.com/thumbseg/1978/1978299-bigthumbnail.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTec3DIbFRPiSOFtwEU-2egd51jy7u7OtLrNubOSqQAPr_rxe0Ba7UH_AsmdTgEGDPwMWg&usqp=CAU",
  "https://www.tourmyindia.com/images/mehrangarh-fort-1.jpg",
  "https://blog.depositphotos.com/wp-content/uploads/2017/07/Soothing-nature-backgrounds-2.jpg.webp",
  "https://www.teahub.io/photos/full/13-139570_cool-nature-background-wallpapers-hd.jpg"
];

List profileLinkList = [
  "https://www.mrdustbin.com/en/wp-content/uploads/2021/03/Suriya-1024x1010.jpg",
  "https://www.scrolldroll.com/wp-content/uploads/2021/09/Dhanush-best-south-indian-actors-scaled.jpg",
  "https://m.media-amazon.com/images/M/MV5BMjAwMjk3NDUzN15BMl5BanBnXkFtZTcwNjI4MTY0NA@@._V1_UX172_CR0,0,172,256_AL_.jpg",
  "https://qph.fs.quoracdn.net/main-qimg-c827fdafa8173d6968c8dd9427751a6b-lq",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPk6202Wspr1NLlw90JT-ccdkVC5DmYg0ZQq_QVgR8ubklofI5qADuD71ajcH_Q3K7xc&usqp=CAU",
  "https://m.media-amazon.com/images/M/MV5BNmZhYjFhMTktZGRjZC00MmM0LTk2NTUtOWE1ZmZhNDJlNmMzXkEyXkFqcGdeQXVyMTMxMTIwMTE0._V1_UY256_CR42,0,172,256_AL_.jpg",
  "https://nettv4u.com/fileman/Uploads/20-Bollywood-Actors-Who-Are-Always-In-Controversies/Hrithik_Roshan.jpg",
  "https://www.notsoporangi.com/upload/media/entries/2018-06/11/746-0-12fad64ea66aa5787fbfcce858e32cb7.jpg",
  "https://i.pinimg.com/736x/06/68/b5/0668b57eb0e8794b224f1462a8712679.jpg",
  "https://www.mrdustbin.com/en/wp-content/uploads/2021/03/Suriya-1024x1010.jpg",
  "https://www.scrolldroll.com/wp-content/uploads/2021/09/Dhanush-best-south-indian-actors-scaled.jpg",
  "https://m.media-amazon.com/images/M/MV5BMjAwMjk3NDUzN15BMl5BanBnXkFtZTcwNjI4MTY0NA@@._V1_UX172_CR0,0,172,256_AL_.jpg",
  "https://qph.fs.quoracdn.net/main-qimg-c827fdafa8173d6968c8dd9427751a6b-lq",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPk6202Wspr1NLlw90JT-ccdkVC5DmYg0ZQq_QVgR8ubklofI5qADuD71ajcH_Q3K7xc&usqp=CAU",
  "https://m.media-amazon.com/images/M/MV5BNmZhYjFhMTktZGRjZC00MmM0LTk2NTUtOWE1ZmZhNDJlNmMzXkEyXkFqcGdeQXVyMTMxMTIwMTE0._V1_UY256_CR42,0,172,256_AL_.jpg",
  "https://nettv4u.com/fileman/Uploads/20-Bollywood-Actors-Who-Are-Always-In-Controversies/Hrithik_Roshan.jpg",
  "https://www.notsoporangi.com/upload/media/entries/2018-06/11/746-0-12fad64ea66aa5787fbfcce858e32cb7.jpg",
  "https://i.pinimg.com/736x/06/68/b5/0668b57eb0e8794b224f1462a8712679.jpg",
];
