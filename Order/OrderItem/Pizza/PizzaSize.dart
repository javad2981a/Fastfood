enum PizzaSize {
  Mini(value: 2),
  Medium(value: 5),
  Large(value: 10);

  final int value;
  const PizzaSize({required this.value});
}
