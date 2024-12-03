import 'package:flutter/material.dart';

class Rekomendasi extends StatelessWidget {
  const Rekomendasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildItem('ngeri_sedap.jpg'),
            SizedBox(
              width: 25,
            ),
            _buildItem('traintobusan.jpg'),
            SizedBox(
              width: 25,
            ),
            _buildItem('agak_laen.jpg'),
            SizedBox(
              width: 25,
            ),
            _buildItem('ngeri_sedap.jpg'),
            SizedBox(
              width: 25,
            ),
            _buildItem('traintobusan.jpg'),
            SizedBox(
              width: 25,
            ),
            _buildItem('agak_laen.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
