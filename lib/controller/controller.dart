import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test/model/fake_data.dart';
import 'package:test/model/model.dart';

class BurgerController extends ChangeNotifier {
  burgermodel model = burgermodel.fromJson(fakeData);
  List<Data?>? cartList = [];

  addToCart(Data? burgerdata) {
    cartList?.add(burgerdata);
    notifyListeners();
  }

  removeFromCart(Data? value) {
    cartList?.remove(value);
    notifyListeners();
  }

  increament(Data? burgerdata) {
    burgerdata!.quantity = burgerdata.quantity! + 1;
    notifyListeners();
  }

  dicriment(Data? burgerdata) {
    burgerdata!.quantity = burgerdata.quantity! - 1;

    notifyListeners();
  }
}
