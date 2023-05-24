void main() {
  Fruta fruta1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Adocicada e cítrica", 23);
  print(fruta1.isMadura);

} 

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura dias para amadurecer. Portanto é $isMadura que ela é comestível.');
  }
}

functQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
}

void mostrarMadura(String nome, int dias) {
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
}

bool funcEstaMadura(int dias){
  if (dias >= 20){
      return true;
    } else {
      return false;
  }
}
