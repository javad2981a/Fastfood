import 'Meat.dart';

class Chicken extends Meat {
  int _weight;

  void set weight(int weight) => this._weight = weight;
  int get weight => _weight;

  Chicken(int weight) : _weight = weight;

  @override
  int getCost() {
    return _weight * 45000;
  }
}
