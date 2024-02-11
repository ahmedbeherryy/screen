import 'package:flutter/material.dart';
import 'models/tracks_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        const SizedBox(
        height:50),
          const Text(
            'Phones',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: tracks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.white,
                    onTap: () {},
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 178,
                        height: 189,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xff8AA0C2),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  spreadRadius: 0)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              tracks[index].image,
                              width: tracks[index].width,
                              height: tracks[index].height,
                            ),
                            Text(
                              tracks[index].title,
                              style: const TextStyle(
                                  height: 2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70)),],
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}