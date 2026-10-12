Future<int> getNumber(int value){
  if(value > 0) 
    return Future.delayed(Duration(milliseconds: 100), () => value);
  else throw Exception();
}

Future<int> safeGetNumber(int value)async{
  try{
    return await getNumber(value);
  }
  catch(Exception){
    return 0;
  }
}

void main() async{
  print(await safeGetNumber(-5));
}