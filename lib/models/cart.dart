import 'package:fluttershoppingcart/models/item.dart';

class Cart {
  List<Item> _items = [];
  double _totalPrice = 0.0;

  void add(Item item) {
    _items.add(item);
    _totalPrice += item.price;
  }

  void remove(Item item) {
    _totalPrice -= item.price;
    _items.remove(item);
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Item> get basketItems {
    return _items;
  }
}
