import 'package:eco/components/categories.dart';
import 'package:flutter/material.dart';

import '../components/product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: Container(
        alignment: Alignment.topLeft,
        child: _currentNav == 0
            ? myHome()
            : _currentNav == 1
                ? myShop()
                : _currentNav == 2
                    ? myBag()
                    : _currentNav == 3
                        ? myFavorites()
                        : myProfile(),
      ),
    );
  }

  Widget myShop() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.red, width: 4)),
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Men",
              ),
              Tab(
                text: "Kids",
              )
            ],
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: [
          womenTap(),
          Icon(Icons.add),
          Icon(Icons.add),
        ]),
      ),
    );
  }

  Widget myBag() {
    return Column();
  }

  Widget myFavorites() {
    return Column();
  }

  Widget myProfile() {
    return Column();
  }

  Widget myHome() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 30),
            height: 617,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                scale: 0.1,
                image: AssetImage("assets/images/two women.jpg"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Fashion\nsale",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: const Size(160, 36)),
                  child: const Text("Check"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const Text(
                      "New",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      child: const Text("View all"),
                      onTap: () {},
                    )
                  ],
                ),
                const Text(
                  "You’ve never seen it before!",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16),
                ),
                const SizedBox(
                  height: 22,
                ),
                SizedBox(
                  height: 358,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Product(
                          image: "assets/images/style1.jpg",
                          style: "Evening Dress",
                          backColor: Colors.red,
                          discountFrom: 15,
                          name: "Dorthy Perkins",
                          price: 12,
                          rate: 10,
                          stat: "-20%"),
                      SizedBox(
                        width: 30,
                      ),
                      Product(
                          image: "assets/images/style2.jpg",
                          style: "Sport Dress",
                          backColor: Colors.red,
                          discountFrom: 22,
                          name: "Sitlly",
                          price: 19,
                          rate: 10,
                          stat: "-15%"),
                      SizedBox(
                        width: 30,
                      ),
                      Product(
                          image: "assets/images/style3.jpg",
                          style: "Sport Dress",
                          backColor: Colors.red,
                          discountFrom: 14,
                          name: "Dorothy Perkins",
                          price: 11,
                          rate: 10,
                          stat: "-20%"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bottomBar() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -1),
              blurRadius: 10,
            )
          ]),
      height: 90,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentNav,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 255, 17, 0),
        unselectedItemColor: Colors.black26,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 40,
              ),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 40,
              ),
              label: "Bag"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 40,
              ),
              label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 40,
              ),
              label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            _currentNav = value;
          });
        },
      ),
    );
  }

  Widget womenTap() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 17, 0)),
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SUMMER SALES",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Up to 50% off",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )
              ]),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: const Categories(
            image: "assets/images/new categories.jpg",
            title: "New",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: const Categories(
            image: "assets/images/clothes categories.jpg",
            title: "Clothes",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: const Categories(
            image: "assets/images/shoes categories.jpg",
            title: "Shoes",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: const Categories(
            image: "assets/images/accesories categories.jpg",
            title: "Accesories",
          ),
        ),
      ]),
    );
  }
}
