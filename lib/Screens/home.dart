import 'package:eco/components/categories.dart';
import 'package:eco/components/productTwo.dart';
import 'package:eco/data.dart';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../components/categoryName.dart';
import '../components/product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: Container(
        alignment: Alignment.topLeft,
        child: currentNav == 0
            ? myHome()
            : currentNav == 1
                ? categoryPage(title: categoryPageTitle)
                : currentNav == 2
                    ? myBag()
                    : currentNav == 3
                        ? myFavorites()
                        : myProfile(),
      ),
    );
  }

  Widget categoryPage({String? title}) {
    return categoryPageIndex == 0
        ? myShop()
        : categoryPageIndex == 1
            ? chooseCategory(newCategory)
            : categoryItems();
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
        currentIndex: currentNav,
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
            currentNav = value;
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
          onTap: () {
            setState(() {
              categoryPageIndex = 1;
            });
          },
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

  Widget chooseCategory(List<String> categories) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              setState(() {
                categoryPageIndex = 0;
              });
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
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
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            minimumSize: const Size.fromHeight(55),
                            backgroundColor:
                                const Color.fromARGB(255, 255, 17, 0)),
                        onPressed: () {},
                        child: const Text(
                          "VIEW ALL ITEMS",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Choose category",
                      style: TextStyle(color: Colors.black38),
                    )
                  ]),
            ),
            SizedBox(
              height: 650,
              child: ListView.separated(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryName(
                    set: () {
                      setState(() {});
                    },
                    categories: categories,
                    index: index,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black26,
                    height: 10,
                  );
                },
              ),
            )
          ],
        ));
  }

  Widget categoryItemsAppBar(bool check) {
    return check == false
        ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                categoryPageTitle,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 45),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "T-shirts",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Crop tops",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Sleeveless",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Shirts",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Filters")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: const Icon(
                            Icons.compare_arrows,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Filters")
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          isItGride = !isItGride;
                        });
                      },
                      child: Icon(Icons.grid_view_outlined))
                ],
              ),
            )
          ])
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "T-shirts",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Crop tops",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Sleeveless",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Shirts",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(width: 10),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Filters")
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: const Icon(
                            Icons.compare_arrows,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Filters")
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          isItGride = !isItGride;
                        });
                      },
                      child: const Icon(Icons.list))
                ],
              ),
            )
          ]);
  }

  Widget categoryItemsInGrid() {
    return SizedBox(
        height: 619.6,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 351, crossAxisCount: 2, crossAxisSpacing: 20),
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
            Product(
                image: "assets/images/style1.jpg",
                style: "Evening Dress",
                backColor: Colors.red,
                discountFrom: 15,
                name: "Dorthy Perkins",
                price: 12,
                rate: 10,
                stat: "-20%"),
            Product(
                image: "assets/images/style1.jpg",
                style: "Evening Dress",
                backColor: Colors.red,
                discountFrom: 15,
                name: "Dorthy Perkins",
                price: 12,
                rate: 10,
                stat: "-20%"),
            Product(
                image: "assets/images/style1.jpg",
                style: "Evening Dress",
                backColor: Colors.red,
                discountFrom: 15,
                name: "Dorthy Perkins",
                price: 12,
                rate: 10,
                stat: "-20%"),
          ],
        ));
  }

  Widget categoryItemsInList() {
    return SizedBox(
      height: 561.6,
      child: ListView(children: const [
        ProductTwo(
          image: "assets/images/pullover.jpg",
          name: "Pullover",
          company: "Mango",
          rate: 10,
          price: 50,
        ),
        SizedBox(
          height: 40,
        ),
        ProductTwo(
          image: "assets/images/blouse.jpg",
          name: "Blouse",
          company: "Dorothy Perkins",
          rate: 0,
          price: 34,
        ),
        SizedBox(
          height: 40,
        ),
        ProductTwo(
          image: "assets/images/t-shirt.jpg",
          name: "T-shirt",
          company: "LOST Ink",
          rate: 10,
          price: 12,
        ),
        SizedBox(
          height: 40,
        ),
        ProductTwo(
          image: "assets/images/shirt.jpg",
          name: "Shirt",
          company: "Topshop",
          rate: 3,
          price: 51,
        ),
        SizedBox(
          height: 40,
        ),
      ]),
    );
  }

  Widget categoryItems() {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            setState(() {
              categoryPageIndex = 1;
            });
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: isItGride == true
            ? Text(
                categoryPageTitle,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              )
            : null,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: categoryItemsAppBar(isItGride),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: isItGride == false
                ? categoryItemsInList()
                : categoryItemsInGrid(),
          )
        ],
      ),
    );
  }
}
