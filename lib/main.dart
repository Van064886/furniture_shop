import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 0, 124, 186),
      statusBarIconBrightness: Brightness.light));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Chair> chairs = [
      Chair(
          id: 1,
          name: 'Herman Miller Aeron',
          image: 'assets/images/1.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      Chair(
          id: 2,
          name: 'Steelcase Gesture',
          image: 'assets/images/2.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      Chair(
          id: 3,
          name: 'Humanscale Freedom',
          image: 'assets/images/3.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      Chair(
          id: 4,
          name: 'Ergohuman High',
          image: 'assets/images/4.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      Chair(
          id: 5,
          name: 'Cerberus',
          image: 'assets/images/5.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      Chair(
          id: 6,
          name: 'Ikea Markus',
          image: 'assets/images/6.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
      Chair(
          id: 7,
          name: 'Serta Works',
          image: 'assets/images/7.png',
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    ];
    final Size size = MediaQuery.of(context).size;

    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.ralewayTextTheme()),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          // margin: const EdgeInsets.only(bottom: 10),
          // width: MediaQuery.of(context).size.width * .8,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 0, 124, 186),
            // borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          child:   Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.white ,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: const Icon(
                  Icons.home,
                  size: 35,
                  color: Color.fromARGB(255, 0, 124, 186),
                ),
              ),
              const Icon(
                Icons.shop_two,
                size: 35,
                color: Colors.white,
              ),
              const Icon(
                Icons.favorite,
                size: 35,
                color: Colors.white,
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 40),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 124, 186),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning,",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "Abraham Linaer",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: Image.network(
                                "https://wac-cdn.atlassian.com/fr/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1450")
                            .image,
                      )
                    ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Wrap(
                  spacing: 15,
                  runSpacing: 25,
                  children: chairs
                      .map((chair) => Stack(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(40, 0, 124, 186),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                width: (size.width / 2) - 30,
                                height: size.height * .28,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 8),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      chair.image!,
                                      width: size.width * .4,
                                      height: size.width * .4,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      chair.name!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          // color: Colors.white,
                                          fontSize: 15,
                                          overflow: TextOverflow.clip),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  right: 5,
                                  child: IconButton.filled(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white),
                                          foregroundColor:
                                              MaterialStatePropertyAll(
                                                  Color.fromARGB(
                                                      255, 0, 124, 186))),
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.favorite_border_rounded)))
                            ],
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class Chair {
  int? id;
  String? name;
  String? image;
  String? description;

  Chair(
      {required this.id,
      required this.name,
      required this.image,
      required this.description});
}
