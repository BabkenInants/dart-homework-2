Future<int> delayedValue(int value){
  return Future.delayed(Duration(milliseconds: 100), 
    () => value
  );
}

Future<int> sumValues(int a, int b) async{
  return await delayedValue(a) + await delayedValue(b);
}

void main() async{
  print(await sumValues(2, 2));
}