import 'package:flutter/material.dart';

class BottonAnimals extends StatelessWidget {
  const BottonAnimals({super.key,required this.name,required this.icon,   this.color = Colors.indigoAccent,
  required this.onClick});
 final String name;
 final String icon;
 final Color color;
 final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Expanded(
        child: ElevatedButton.icon
        (onPressed: (){
        onClick(); 
        },
         style: ElevatedButton.styleFrom(
            backgroundColor: color, alignment: Alignment.centerLeft), 
          icon:Expanded(
          child:
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image(image: AssetImage(icon))), ), 
        label: Text(name),)
    
    
    
      ),
    );
  }
}