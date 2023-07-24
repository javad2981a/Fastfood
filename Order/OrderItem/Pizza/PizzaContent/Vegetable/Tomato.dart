import 'Vegetable.dart';

class Tomato extends Vegetable {
  int _weight;

  void set weight(int weight) => this._weight = weight;
  int get weight => _weight;

  Tomato(int weight) : _weight = weight;

  @override
  int getCost() {
    return _weight * 12000;
  }
}
