import 'Vegetable.dart';

class Mushroom extends Vegetable {
  int _weight;
  bool _canned;

  void set weight(int weight) => this._weight = weight;
  int get weight => _weight;

  void set canned(bool canned) => this._canned = canned;
  bool get canned => _canned;

  Mushroom(int weight, bool canned)
      : _weight = weight,
        _canned = canned;

  @override
  int getCost() {
    return _weight * 30000 * (canned ? 2 : 1);
  }
}
