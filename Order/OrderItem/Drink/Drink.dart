import '../OrderItem.dart';

class Drink extends OrderItem {
  String _drinkName;
  int _weight;
  bool _carbonated;

  Drink(String drinkName, int weight, bool carbonated)
      : _drinkName = drinkName,
        _weight = weight,
        _carbonated = carbonated;

  String get deinkName => _drinkName;
  void set deinkName(String drinkName) => _drinkName = drinkName;

  int get weight => _weight;
  void set weight(int weight) => _weight = weight;

  bool get carbonated => _carbonated;
  void set carbonated(bool carbonated) => _carbonated = carbonated;

  @override
  int getCost() {
    return weight * 20 + (_carbonated ? 4000 : 0);
  }
}
