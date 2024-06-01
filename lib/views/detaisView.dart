import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test/controller/controller.dart';
import 'package:test/model/model.dart';
import 'package:test/views/cartView.dart';

class Diteals extends StatefulWidget {
  const Diteals({
    super.key,
    required this.data,
  });
  final Data? data;
  @override
  State<Diteals> createState() => _DitealsState();
}

class _DitealsState extends State<Diteals> {
  // var control2 = Get.put(BurgerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                  Icon(Icons.shopping_cart_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              widget.data?.image ?? "assets/images (1).jpg",
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.data?.title ?? "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "-  2  +",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.data?.description ?? "",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Total price",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("\$100",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            context.read<BurgerController>().addToCart(widget.data);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cartscreen(),
                                ));
                          },
                          child: Container(
                            height: 60,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Row(children: [
                              Text(
                                "      Add To Cart",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.shopping_cart)
                            ]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
