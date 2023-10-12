import 'package:eco/Screens/brand.dart';
import 'package:flutter/material.dart';

import '../data.dart';
import '../functions.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
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
          "Filters",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 735,
        child: SingleChildScrollView(
          child: Column(children: [
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              title: Text(
                "Price range",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${(currentRangeValues.start).toInt()}",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$${(currentRangeValues.end).toInt()}",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  RangeSlider(
                    activeColor: Colors.red,
                    values: currentRangeValues,
                    max: 100,
                    divisions: 100,
                    onChanged: (RangeValues values) {
                      setState(() {
                        currentRangeValues = values;
                      });
                    },
                  ),
                ],
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              title: Text(
                "Colors",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          blackCheck = !blackCheck;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            blackCheck == true ? Colors.red : Colors.white,
                        radius: 30,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 25,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          grayCheck = !grayCheck;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            grayCheck == true ? Colors.red : Colors.white,
                        radius: 30,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 25,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          redCheck = !redCheck;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            redCheck == true ? Colors.red : Colors.white,
                        radius: 30,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 25,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          brawonCheck = !brawonCheck;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            brawonCheck == true ? Colors.red : Colors.white,
                        radius: 30,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.brown,
                            radius: 25,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          yellowCheck = !yellowCheck;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            yellowCheck == true ? Colors.red : Colors.white,
                        radius: 30,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: 25,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          blueCheck = !blueCheck;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            blueCheck == true ? Colors.red : Colors.white,
                        radius: 30,
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 25,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              title: Text(
                "Sizes",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                height: 100,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          xsCheck = !xsCheck;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: xsCheck == true ? Colors.red : null,
                            border: Border.all(
                                color: xsCheck == false
                                    ? Colors.black
                                    : Colors.white,
                                width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "XS",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: xsCheck == false
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          sCheck = !sCheck;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: sCheck == true ? Colors.red : null,
                            border: Border.all(
                                color: sCheck == false
                                    ? Colors.black
                                    : Colors.white,
                                width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "S",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: sCheck == false
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          mCheck = !mCheck;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: mCheck == true ? Colors.red : null,
                            border: Border.all(
                                color: mCheck == false
                                    ? Colors.black
                                    : Colors.white,
                                width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "M",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: mCheck == false
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          lCheck = !lCheck;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: lCheck == true ? Colors.red : null,
                            border: Border.all(
                                color: lCheck == false
                                    ? Colors.black
                                    : Colors.white,
                                width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "L",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: lCheck == false
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          xlCheck = !xlCheck;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: xlCheck == true ? Colors.red : null,
                            border: Border.all(
                                color: xlCheck == false
                                    ? Colors.black
                                    : Colors.white,
                                width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "XL",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: xlCheck == false
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              title: Text(
                "Sizes",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 170,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              all = !all;
                              women = false;
                              men = false;
                              boys = false;
                              girls = false;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: all == true ? Colors.red : null,
                                border: Border.all(
                                    color: all == false
                                        ? Colors.black
                                        : Colors.white,
                                    width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: all == false
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              all = false;
                              women = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: women == true ? Colors.red : null,
                                border: Border.all(
                                    color: women == false
                                        ? Colors.black
                                        : Colors.white,
                                    width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              "Women",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: women == false
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              all = false;

                              men = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: men == true ? Colors.red : null,
                                border: Border.all(
                                    color: men == false
                                        ? Colors.black
                                        : Colors.white,
                                    width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              "Men",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: men == false
                                      ? Colors.black
                                      : Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                all = false;
                                boys = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: boys == true ? Colors.red : null,
                                  border: Border.all(
                                      color: boys == false
                                          ? Colors.black
                                          : Colors.white,
                                      width: 0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Boys",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: boys == false
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                all = false;
                                girls = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: girls == true ? Colors.red : null,
                                  border: Border.all(
                                      color: girls == false
                                          ? Colors.black
                                          : Colors.white,
                                      width: 0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Girls",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: girls == false
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ])
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  goTo(NewScreen: const BrandScreen(), context: context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 388,
                      child: const ListTile(
                        subtitle: Text(
                          "adidas Originals, Jack & Jones, s.Oliver",
                          style: TextStyle(color: Colors.black38),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        title: Text(
                          "Brand",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
