Future<String> runTask(String name, int milliseconds){
  return Future.delayed(Duration(milliseconds: milliseconds), 
  () => "Task $name completed");
}

Future<List<String>> runTasks() async{
  return await Future.wait([
    runTask("A", 100), 
    runTask("B", 50), 
    runTask("C", 150)
  ]); 
}

void main() async{
  print(await runTasks());
}