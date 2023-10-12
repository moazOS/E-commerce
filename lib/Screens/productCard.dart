import 'package:flutter/material.dart';

import '../components/product.dart';
import '../data.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -5),
              color: Colors.black12,
              blurRadius: 7,
              spreadRadius: 2)
        ]),
        height: 90,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.red,
              minimumSize: Size.fromHeight(50),
              backgroundColor: Colors.red,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
          onPressed: () {},
          child: const Text(
            "ADD TO CART",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.black,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          "Short dress",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 782,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              child: Image.asset("assets/images/short dress.png",
                  fit: BoxFit.contain),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              showModalBottomSheet<void>(
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      alignment: Alignment.center,
                                      height: 302,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            "Select size",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
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
                                                      color: xsCheck == true
                                                          ? Colors.red
                                                          : null,
                                                      border: Border.all(
                                                          color: xsCheck ==
                                                                  false
                                                              ? Colors.black
                                                              : Colors.white,
                                                          width: 0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: Text(
                                                    "XS",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      color: sCheck == true
                                                          ? Colors.red
                                                          : null,
                                                      border: Border.all(
                                                          color: sCheck == false
                                                              ? Colors.black
                                                              : Colors.white,
                                                          width: 0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: Text(
                                                    "S",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      color: mCheck == true
                                                          ? Colors.red
                                                          : null,
                                                      border: Border.all(
                                                          color: mCheck == false
                                                              ? Colors.black
                                                              : Colors.white,
                                                          width: 0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: Text(
                                                    "M",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      color: lCheck == true
                                                          ? Colors.red
                                                          : null,
                                                      border: Border.all(
                                                          color: lCheck == false
                                                              ? Colors.black
                                                              : Colors.white,
                                                          width: 0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: Text(
                                                    "L",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                      color: xlCheck == true
                                                          ? Colors.red
                                                          : null,
                                                      border: Border.all(
                                                          color: xlCheck ==
                                                                  false
                                                              ? Colors.black
                                                              : Colors.white,
                                                          width: 0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  child: Text(
                                                    "XL",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: xlCheck == false
                                                            ? Colors.black
                                                            : Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Divider(
                                            thickness: 1,
                                          ),
                                          Container(
                                              padding: const EdgeInsets.all(10),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Size info",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 17),
                                                  ),
                                                  Icon(Icons
                                                      .keyboard_arrow_right)
                                                ],
                                              )),
                                          const Divider(
                                            thickness: 1,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(20),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shadowColor: Colors.red,
                                                  minimumSize:
                                                      Size.fromHeight(50),
                                                  backgroundColor: Colors.red,
                                                  elevation: 5,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          30)))),
                                              onPressed: () {},
                                              child: const Text(
                                                "ADD TO CART",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            });
                          },
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.red, width: 0.5)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Size",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                ),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black26, width: 0.5)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Colors",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 17),
                              ),
                              Icon(Icons.keyboard_arrow_down_sharp)
                            ],
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.all(15),
                                shape: CircleBorder()),
                            onPressed: () {
                              setState(() {
                                check = !check;
                              });
                            },
                            child: check == false
                                ? const Icon(
                                    Icons.favorite_border,
                                    color: Colors.black26,
                                  )
                                : const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "H&M",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$19.99",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const Text(
                      "Short black dress",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          size: 20,
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          size: 20,
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          size: 20,
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          size: 20,
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          size: 20,
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "(10)",
                          style: TextStyle(fontSize: 12, color: Colors.black26),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
            Container(
              child: Column(children: [
                const Divider(
                  thickness: 1,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping info",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    )),
                const Divider(
                  thickness: 1,
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Support",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    )),
                const Divider(
                  thickness: 1,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You can also like this",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "12 items",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
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
            ),
          ]),
        ),
      ),
    );
  }
}
