import 'Order/OrderItem/Drink/Drink.dart';
import 'Order/DeliveryType.dart';
import 'Order/Order.dart';
import 'Order/OrderItem/Pizza/Pizza.dart';
import 'Order/OrderItem/Pizza/PizzaContent/Cheese.dart';
import 'Order/OrderItem/Pizza/PizzaContent/Meat/ChickenHam.dart';
import 'Order/OrderItem/Pizza/PizzaContent/Vegetable/Mushroom.dart';
import 'Order/OrderItem/Pizza/PizzaContent/Vegetable/Tomato.dart';
import 'Order/OrderItem/Pizza/PizzaSize.dart';

void main(List<String> args) {
  Order order = Order(DeliveryType.MotorCycle);
  order.addItemToOrder(Drink('coca', 250, true));
  Pizza pizza1 = Pizza('Peperony', PizzaSize.Medium);
  pizza1.addContetnToPizza(Tomato(100));
  pizza1.addContetnToPizza(Mushroom(50, false));
  pizza1.addContetnToPizza(ChickenHam(200));
  pizza1.addContetnToPizza(Cheese(200));
  order.addItemToOrder(pizza1);
  print(order.calcOrderCosts());

  
}
