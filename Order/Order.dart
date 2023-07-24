import 'DeliveryType.dart';
import 'OrderItem/OrderItem.dart';

class Order {
  DeliveryType _deliveryType;
  List<OrderItem> _ordersItem;

  void set deliveryType(DeliveryType deliveryType) =>
      this._deliveryType = deliveryType;
  DeliveryType get deliveryType => this._deliveryType;

  Order(DeliveryType deliveryType)
      : _deliveryType = deliveryType,
        _ordersItem = [];

  void addItemToOrder(OrderItem item) {
    _ordersItem.add(item);
  }

  int calcOrderCosts() {
    return _deliveryType.value +
        _ordersItem.fold(
            0, (previousValue, element) => previousValue += element.getCost());
  }
}
