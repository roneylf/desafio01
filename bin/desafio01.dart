int summationNumbers(int n) {
  int sum = 0;
  for (int i = 1; i < n; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      sum += i;
    }
  }
  return sum;
}

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print(
        'Um exemplo será executado, pois não foi passado um número como argumento.');
    print("Exemplo com o 11 -> " + summationNumbers(11).toString());
    print("Exemplo com o 10 -> " + summationNumbers(10).toString());
    print("Exemplo com o 30 -> " + summationNumbers(30).toString());
    print("Exemplo com o 15 -> " + summationNumbers(15).toString());
  } else {
    int n = int.parse(arguments[0]);
    print("Calculo com o $n -> " + summationNumbers(n).toString());
  }
}
