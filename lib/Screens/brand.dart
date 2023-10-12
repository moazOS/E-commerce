import 'package:flutter/material.dart';

import '../components/brandName.dart';

class BrandScreen extends StatefulWidget {
  const BrandScreen({super.key});

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -5),
              color: Colors.black12,
              blurRadius: 7,
              spreadRadius: 2)
        ]),
        height: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 45),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {},
              child: const Text(
                "Discard",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.red,
                  minimumSize: Size(200, 45),
                  backgroundColor: Colors.red,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {},
              child: const Text(
                "Apply",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          "Brand",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Material(
            borderRadius: BorderRadius.all(const Radius.circular(50)),
            elevation: 1,
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    prefixIconColor: Colors.black26,
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                        fontSize: 17,
                        height: 2.8)),
              ),
            ),
          ),
          BrandName(
            title: "adidas",
          ),
          BrandName(
            title: "adidas Originals",
          ),
          BrandName(
            title: "Blend",
          ),
          BrandName(
            title: "Boutique Moschino",
          ),
          BrandName(
            title: "Champion",
          ),
          BrandName(
            title: "Diesel",
          ),
          BrandName(
            title: "Jack & Jones",
          ),
          BrandName(
            title: "Naf Naf",
          ),
          BrandName(
            title: "Red Valentino",
          ),
          BrandName(
            title: "s.Oliver",
          ),
        ]),
      ),
    );
  }
}
