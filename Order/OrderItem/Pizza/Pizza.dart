import '../OrderItem.dart';
import 'PizzaContent/PizzaContent.dart';
import 'PizzaSize.dart';

class Pizza extends OrderItem {
  List<PizzaContent> _contents;
  String _name;
  PizzaSize _size;
  int _basePrice;

  void set name(String name) => _name = name;
  String get name => _name;

  void set size(PizzaSize size) => _size = size;
  PizzaSize get size => _size;

  int get basePrice => _basePrice;

  Pizza(String name, PizzaSize size)
      : _contents = [],
        _name = name,
        _size = size,
        _basePrice = 20000;

  void addContetnToPizza(PizzaContent content) {
    _contents.add(content);
  }

  @override
  int getCost() {
    return _basePrice +
        _contents.fold(
            0, (previousValue, element) => previousValue += element.getCost());
  }
}
