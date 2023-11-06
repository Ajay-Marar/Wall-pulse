import 'package:flutter/material.dart';
import 'package:wallpulse/views/widgets/appbar.dart';

import 'package:wallpulse/views/widgets/searchbar.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 70, 57, 57),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: customappbar(
          word1: "WallPulse",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const searchbar(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 400,
                    crossAxisCount: 2,
                    crossAxisSpacing: 17,
                    mainAxisSpacing: 10),
                itemCount: 16,
                itemBuilder: ((context, index) => Container(
                      height: 800,
                      width: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        child: Image.network(
                          "https://images.pexels.com/photos/16432382/pexels-photo-16432382/free-photo-of-cold-sea-road-nature.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
