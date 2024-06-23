class TourModel {
  String nombre;
  String ciudad;
  String descripcion;
  String precio;
  double rating;
  String imageUrl;
  TourModel({
    required this.nombre,
    required this.ciudad,
    required this.descripcion,
    required this.precio,
    required this.rating,
    required this.imageUrl,
  });
}

TourModel tour1 = TourModel(
    nombre: "Caminata en cusco",
    ciudad: "Cusco",
    descripcion: "Hacer la caminata en cusco",
    precio: "500",
    rating: 4.5,
    imageUrl:
        "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/f2/64/89.jpg");
TourModel tour2 = TourModel(
    nombre: " Rainbow Mountains",
    ciudad: "Cusco",
    descripcion: "Montaña de 7 Colores",
    precio: "200",
    rating: 5,
    imageUrl:
        "https://trexperienceperu.com/sites/default/files/2022-09/raimbow-mountian-peru.jpg");
TourModel tour3 = TourModel(
    nombre: "Canotaje",
    ciudad: "Puerto Maldonado",
    descripcion: "Hacer la caminata en cusco",
    precio: "500",
    rating: 4.5,
    imageUrl:
        "https://www.atrapalo.pe/common/photo/d/20237/5454/ticr_550_243.jpg");

TourModel tour4 = TourModel(
    nombre: "Palccoyo Rainbow ",
    ciudad: "Cusco",
    descripcion: "Palccoyo Rainbow ",
    precio: "300",
    rating: 4.5,
    imageUrl:
        "https://www.salkantaytrekking.com/blog/wp-content/uploads/2020/11/rainbow-mountain-@bui_basics-819x1024.jpg");
