import 'dart:io';

List<int> numbersList(int num) {
  List<int> numbers = [];
  for (var i = 0; i < num; i++) {
    if (i % 3 == 0 && i != 0) {
      numbers.add(i);
    } else if (i % 5 == 0 && i != 0) {
      numbers.add(i);
    }
  }
  return numbers;
}

int sum(List<int> listNumbers) {
  int result = 0;
  for (var i = 0; i < listNumbers.length; i++) {
    result = result + listNumbers[i];
  }
  return result;
}

void main(List args) {
  int num = int.parse(args[0]);

  var result = numbersList(num);
  var soma = sum(result);

  stdout.write('Lista de numeros: $result\n');
  stdout.write('Resultado da soma: $soma\n\n');

  stdout.write("Aperte qualquer tecla para sair...");
  stdin.readLineSync();
}
