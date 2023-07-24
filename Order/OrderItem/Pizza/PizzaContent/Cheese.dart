import 'PizzaContent.dart';

class Cheese extends PizzaContent {
  int _weight;

  void set weight(int weight) => this._weight = weight;
  int get weight => _weight;

  Cheese(int weight) : _weight = weight;

  @override
  int getCost() {
    return _weight * 45000;
  }
}
