import 'Meat.dart';

class ChickenHam extends Meat {
  int _weight;

  void set weight(int weight) => this._weight = weight;
  int get weight => _weight;

  ChickenHam(int weight) : _weight = weight;

  @override
  int getCost() {
    return _weight * 100000;
  }
}
