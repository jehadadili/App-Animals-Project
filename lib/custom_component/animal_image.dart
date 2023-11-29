import 'package:flutter/material.dart';



class AnimalImage extends StatelessWidget {
  const AnimalImage( {super.key,required this.imagePaths});
final String imagePaths;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage
        (image: AssetImage(imagePaths),
        fit: BoxFit.fill
        )
      ) ,
    );
  }
}