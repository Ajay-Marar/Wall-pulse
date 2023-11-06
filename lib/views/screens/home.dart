import 'package:flutter/material.dart';
import 'package:wallpulse/models/controller/apifetch.dart';
import 'package:wallpulse/models/photomodels.dart';
import 'package:wallpulse/views/screens/category.dart';
import 'package:wallpulse/views/widgets/appbar.dart';
import 'package:wallpulse/views/widgets/category.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Photomodel> trendingWallList = [];

  Future<void> getTrendingWallpapers() async {
    setState(() {
      trendingWallList =
          ApiOperations().getTrendingWallpapers() as List<Photomodel>;
    });
  }

  @override
  void initState() {
    super.initState();
    getTrendingWallpapers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 12, 1, 1),
        title: customappbar(word1: "WallPulse"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const SearchBar(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingWallList.length,
                  itemBuilder: (context, index) {
                    return category();
                  },
                ),
              ),
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
                  mainAxisSpacing: 10,
                ),
                itemCount: trendingWallList.length,
                itemBuilder: (context, index) {
                  return CategoryScreen(
                    imgSrc: trendingWallList[index].imgSrc,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
