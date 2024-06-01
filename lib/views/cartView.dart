import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test/controller/controller.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  // var context.read<BurgerController>() = Get.put(BurgerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios_new)),
                Consumer<BurgerController>(builder: (context, _, widget) {
                  return Column(
                    children: List.generate(
                        context.read<BurgerController>().cartList?.length ?? 0,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(context
                                              .read<BurgerController>()
                                              .cartList?[index]
                                              ?.image ??
                                          "assets/images (1).jpg"),
                                      Text(
                                        "cheese burger",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    context
                                                        .read<
                                                            BurgerController>()
                                                        .increament(context
                                                            .read<
                                                                BurgerController>()
                                                            .cartList?[index]);
                                                  },
                                                  icon: Icon(Icons.add)),
                                              Text(
                                                context
                                                        .read<
                                                            BurgerController>()
                                                        .cartList?[index]
                                                        ?.quantity
                                                        .toString() ??
                                                    '0',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    context
                                                        .read<
                                                            BurgerController>()
                                                        .dicriment(context
                                                            .read<
                                                                BurgerController>()
                                                            .cartList?[index]);
                                                  },
                                                  icon: Icon(Icons.remove))
                                            ],
                                          ),
                                          Text(
                                            "${100 * (context.read<BurgerController>().cartList?[index]?.quantity ?? 0)}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
