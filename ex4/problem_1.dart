abstract class Vehicle{
  double fuelConsumption();
}

class Car extends Vehicle{
  double _litersPer100Km = 0;
  Car(double lp100km){
     _litersPer100Km = lp100km;
  }
  @override
  double fuelConsumption() {
    return _litersPer100Km;
  }
}

class Motorcycle extends Vehicle{
  double _litersPer100Km = 0;
  Motorcycle(double lp100km){
     _litersPer100Km = lp100km;
  }
  @override
  double fuelConsumption() {
    return _litersPer100Km;
  }
}

double totalConsumption(List<Vehicle> vehicles, double distance){
  double _total = 0;
  for (var vehicle in vehicles)
    _total += vehicle.fuelConsumption() * distance / 100;
  return _total;
}

void main(){
  var car = Car(10);
  var moto = Motorcycle(4);
  print(totalConsumption([car, moto], 120));
}