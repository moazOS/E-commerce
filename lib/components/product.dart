import 'package:eco/Screens/productCard.dart';
import 'package:eco/functions.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product(
      {super.key,
      required this.stat,
      required this.backColor,
      required this.rate,
      required this.name,
      required this.image,
      required this.style,
      required this.discountFrom,
      required this.price});

  final String stat;
  final Color backColor;
  final int rate;
  final String name;
  final String style;
  final int discountFrom;
  final int price;
  final String image;
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goTo(context: context, NewScreen: ProductCard());
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              height: 248,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                      scale: 1 / 10, image: AssetImage(widget.image))),
              child: Container(
                height: 30,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: widget.backColor),
                child: Center(
                    child: Text(
                  widget.stat,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )),
              ),
            ),
            Positioned(
              top: 210,
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
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Icon(
              size: 15,
              Icons.star,
              color: Colors.amber,
            ),
            const Icon(
              size: 15,
              Icons.star,
              color: Colors.amber,
            ),
            const Icon(
              size: 15,
              Icons.star,
              color: Colors.amber,
            ),
            const Icon(
              size: 15,
              Icons.star,
              color: Colors.amber,
            ),
            const Icon(
              size: 15,
              Icons.star,
              color: Colors.amber,
            ),
            Text(
              "(${widget.rate})",
              style: const TextStyle(fontSize: 12, color: Colors.black26),
            )
          ],
        ),
        Text(
          widget.name,
          style: const TextStyle(fontSize: 15, color: Colors.black26),
        ),
        const SizedBox(
          height: 1,
        ),
        Text(
          widget.style,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 1,
        ),
        Row(
          children: [
            Text(
              "${widget.discountFrom}\$",
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 2.85,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: Colors.black26),
            ),
            const SizedBox(
              width: 3,
            ),
            Text("${widget.price}\$",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                )),
          ],
        )
      ]),
    );
  }
}
