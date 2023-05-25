void main() {
  Fruta fruta1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Adocicada e cítrica", 23);
  print(fruta1.isMadura);

} 

class Alimento{
  String nome;
  double peso;
  String cor;
  Alimento(this.nome,this.peso,this.cor);

  void printAlimento(){
    print('Este(a) $nome pesa $peso gramas e é $cor.')
  }
}

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
    : super(nome, peso, cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print('Pronto, o $nome está cozinhando');
    } else {
      print('Não precisa cozinhar');
    }
  }
}

class Fruta extends Alimento{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura})
    : super(nome, peso, cor);

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura dias para amadurecer. Portanto é $isMadura que ela é comestível.');
  }

  void fazerSuco(){
    print('Você fez um ótimo suco de $nome');
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
