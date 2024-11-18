import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_travel/const.dart';
import 'package:project_travel/models/destination.dart';
import 'package:project_travel/widgets/popular_destination.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  List<TravelDestination> popular = listDestination.where((element) => element.category == 'popular').toList();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildAppBar(),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Destinasi Populer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)
                  ),
                  Text("Lihat Semua", style: TextStyle(
                    fontSize: 12, 
                    color: blueTextColor
                    ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: 
              List.generate(
                popular.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: PopularDestination(destination: popular[index]),
                  ),
              ),),
            ),
            )
        ],
      ),
    );
  }
}

Widget buildAppBar() {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.6),
          spreadRadius: 5, 
          blurRadius: 10,
          offset: Offset(0, 4), // biar kebawah blurnya
        )
      ],
    ),
    child: SafeArea(child: Center(
      child: Padding(padding: EdgeInsets.only(
        top: 20,
        left: 15,
        right: 15,
      ),
      child: buildSearchButton()
      ),
    )),
  );
}

 Widget buildSearchButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'cari destinasi...',
          hintStyle: TextStyle(
            color: Colors.white54,
            fontSize: 18,
            
          ),
          prefixIcon: Icon(Icons.search, color: Colors.white54, size: 28),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }