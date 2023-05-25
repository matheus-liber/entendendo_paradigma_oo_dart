void main() {
  Fruta fruta1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Adocicada e cítrica", 23);
  print(fruta1.isMadura);

  Legume mandioca = Legume('Macaxeira', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Noz macadamia = Noz('Macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citrica limao = Citrica('Limão', 50, 'Verde', 'Azedo', 5, 9);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  banana.fazerSuco();
  limao.existeRefri(true);

} 

class Alimento{
  String nome;
  double peso;
  String cor;
  Alimento(this.nome,this.peso,this.cor);

  void printAlimento(){
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legume extends Alimento implements Bolo{
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
  @override
  void separarIngredientes() {

  }
  @override
  void fazerMassa() {

  }
  @override
  void assar() {

  }
}

class Fruta extends Alimento implements Bolo{
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
  @override
  void separarIngredientes(){
    print('Pegar a fruta');
  }
  @override
  void fazerMassa(){
    print('Misturar a fruta com farinha, açucar, ovos, etc');
  }
  @override
  void assar(){
    print('Colocar para assar no forno por 40 minutos');
  }
}

class Citrica extends Fruta{
  double nivelAzedo;

  Citrica(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.nivelAzedo) 
    : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe){
    if(existe){
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refrigerante de $nome');
    }
  }
}

class Noz extends Fruta{
  double porcentagemOleoNatural;

  Noz(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.porcentagemOleoNatural) 
    : super(nome, peso, cor, sabor, diasDesdeColheita);
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}



