
import 'package:app_animal/util/animal_names.dart';
import 'package:app_animal/util/audio_paths.dart';
import 'package:app_animal/util/icons_paths.dart';
import 'package:app_animal/util/images_paths.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

import 'custom_component/animal_image.dart';
import 'custom_component/botton_animal.dart';

class HomePage extends StatefulWidget {
  const  HomePage({super.key,required});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 String image = ImagesPaths.animals ;
 AudioPlayer audioPlayer = AudioPlayer() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text(
          'Animals',style: TextStyle(color: Colors.black),
        ),
        actions: [
          SizedBox(
            child: CircleAvatar(
              backgroundImage: AssetImage(IconPaths.animal),
            ),
          )
        
        ],
      ),
      body: Column(
        children: [
            Expanded(
            flex: 3,
            child:AnimalImage(imagePaths: image,),
          ),
              Row(
                children: [
                 Expanded(
                          flex: 1,
                          child: BottonAnimals(name:AnimalNames.bird ,
                          icon:IconPaths.bird ,
                          onClick: (
                          ){
                            btnAction(imagePath: ImagesPaths.bird ,
                             audioPath: AudioPaths.bird);
         print('This animal is ${AnimalNames.bird}');
      },)
                        ),
         
           Expanded(
            flex: 1,
            child: BottonAnimals(name:AnimalNames.cat ,
            icon:IconPaths.cat,
            onClick: (){
               btnAction(imagePath: ImagesPaths.cat ,
                             audioPath: AudioPaths.cat);
         print('This animal is ${AnimalNames.cat}');
      },
      color: Colors.orange,)
          ),
           Expanded(
            flex: 1,
            child: BottonAnimals(name:AnimalNames.crocodile,
            icon:IconPaths.crocodile ,
            onClick: (){
               btnAction(imagePath: ImagesPaths.crocodile ,
                             audioPath: AudioPaths.crocodile);
         print('This animal is ${AnimalNames.crocodile}');
      },)
          ),
  
        ],
      ),
         Row(
                children: [
                 Expanded(
                          flex: 1,
                          child: BottonAnimals(name:AnimalNames.deer,
                          icon:IconPaths.deer ,
                          onClick: (){
                             btnAction(imagePath: ImagesPaths.deer ,
                             audioPath: AudioPaths.deer);
         print('This animal is ${AnimalNames.deer}');
      },
        color: Colors.orange,)
                        ),
         
           Expanded(
            flex: 1,
            child: BottonAnimals(name:AnimalNames.dog ,
            icon:IconPaths.dog,
            onClick: (){
               btnAction(imagePath: ImagesPaths.dog ,
                             audioPath: AudioPaths.dog);
         print('This animal is ${AnimalNames.dog}');
      },)
          ),
           Expanded(
            flex: 1,
            child: BottonAnimals(name:AnimalNames.frog,
            icon:IconPaths.frog ,
            onClick: (){
               btnAction(imagePath: ImagesPaths.frog ,
                             audioPath: AudioPaths.frog);
         print('This animal is ${AnimalNames.frog}');
      },
        color: Colors.orange,)
          ),
  
        ],
      ),
                Row(
                children: [
                 Expanded(
                          flex: 1,
                          child: BottonAnimals(name:AnimalNames.goose,
                          icon:IconPaths.goose ,
                          onClick: (){
                             btnAction(imagePath: ImagesPaths.goose,
                             audioPath: AudioPaths.goose);
         print('This animal is ${AnimalNames.goose}');
      },)
                        ),
         
           Expanded(
            flex: 1,
            child: BottonAnimals(name:AnimalNames.lion ,
            icon:IconPaths.lion,
      onClick: (){
         btnAction(imagePath: ImagesPaths.lion ,
                             audioPath: AudioPaths.lion);
         print('This animal is ${AnimalNames.lion}'
         );
      },
        color: Colors.orange,
             )
          ),
           Expanded(
            flex: 1,
            child: BottonAnimals(name:AnimalNames.monkey,
            icon:IconPaths.monkey ,
            onClick: (){
               btnAction(imagePath: ImagesPaths.monkey ,
                             audioPath: AudioPaths.monkey);
         print('This animal is ${AnimalNames.monkey}');
      },)
          ),
  
        ],
      ),

      ],
      ),
      
    );
  
  }
  void btnAction({required String imagePath, required String audioPath}) async {
    audioPlayer.stop();
    AssetSource source = AssetSource(audioPath);
    await audioPlayer.play(source);
    setState(() {
      image = imagePath;
    });
  }

}