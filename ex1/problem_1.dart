void main() {
  List<String> _groceriesList = ["Milk", "Eggs", "Ham"];
  _groceriesList.add("Bread");
  _groceriesList.insert(1, "Chocolate");
  _groceriesList.removeAt(3);
  _groceriesList[1] = "Ham";
  print(_groceriesList[0]);
  print(_groceriesList[_groceriesList.length - 1]);
  print(_groceriesList.length == 0);
  print(_groceriesList);
}
