import 'package:flutter/material.dart';
import 'package:travelappg8/models/country_model.dart';

class CardTravel extends StatelessWidget {
  CountryModel country;

  CardTravel(this.country);

  Widget _buildFotos() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          // right: 30,
          child: CircleAvatar(
            radius: 16,
            // backgroundColor: Colors.red,
            backgroundImage: NetworkImage(
                "https://img.freepik.com/foto-gratis/retrato-hermoso-mujer-joven-posicion-pared-gris_231208-10760.jpg"),
          ),
        ),
        Positioned(
          left: 20,
          child: CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
                "https://images.ecestaticos.com/vU8sC8tLdkx-2YYh1fkOGL8vfeY=/0x0:990x557/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F62c%2Fe5d%2F314%2F62ce5d3141c0b670144a692b7f6a21fa.jpg"),
          ),
        ),
        Positioned(
          left: 40,
          child: CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
                "https://resizer.glanacion.com/resizer/v2/la-pregunta-sobre-que-significa-ser-una-buena-E6PROFWDTRBEBPD7P2PORWQSHI.jpg?auth=369474033218df2c1f1d66e140c630ebb8a53a8f8f8e5755b9dbfd68b1237c07&width=880&height=586&quality=70&smart=true"),
          ),
        ),
      ],
    );
  }

  Widget _buildNew() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.4),
      ),
      child: Text(
        "New",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              country.nombre,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              country.toursList.length.toString(),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.40),
          ),
          child: Column(
            children: [
              Text(
                country.rating.toString(),
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8),
      child: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 2 - 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.srcATop,
            ),
            image: NetworkImage(
              country.imageUrl,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildNew(),
                SizedBox(
                  width: 16,
                ),
                _buildFotos()
              ],
            ),
            _buildFooter(),
          ],
        ),
      ),
    );
  }
}
