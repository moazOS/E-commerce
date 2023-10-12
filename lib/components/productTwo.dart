import 'package:flutter/material.dart';

import '../Screens/productCard.dart';
import '../functions.dart';

class ProductTwo extends StatefulWidget {
  const ProductTwo(
      {super.key,
      required this.rate,
      required this.price,
      required this.company,
      required this.name,
      required this.image});
  final int rate;
  final int price;
  final String name;
  final String company;
  final String image;

  @override
  State<ProductTwo> createState() => _ProductTwoState();
}

class _ProductTwoState extends State<ProductTwo> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goTo(context: context, NewScreen: ProductCard());
      },
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 130,
                    width: 130,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.company,
                        style: TextStyle(color: Colors.black26),
                      ),
                      Row(
                        children: [
                          const Icon(
                            size: 20,
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            size: 20,
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            size: 20,
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            size: 20,
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Icon(
                            size: 20,
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            "(${widget.rate})",
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black26),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text("${widget.price}\$",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              right: BorderSide.strokeAlignOutside - 1,
              top: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const CircleBorder(),
                  minimumSize: const Size(60, 60),
                ),
                onPressed: () {
                  setState(() {
                    fav = !fav;
                  });
                },
                child: fav == false
                    ? const Icon(Icons.favorite_border, color: Colors.black26)
                    : const Icon(Icons.favorite, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
