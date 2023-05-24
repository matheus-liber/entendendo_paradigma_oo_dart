void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Adocicada e cítrica";
  int diasDesdeColheita = 23;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);
}

bool funcEstaMadura(int dias){
  if (dias >= 20){
      return true;
    } else {
      return false;
  }
}
