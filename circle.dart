abstract class Forma {
  String cor;
  Forma(this.cor);
  // Método abstrato: cada filho decidirá como implementar
  String paraSVG();
}

class Circulo extends Forma {
  double centro_x, centro_y, raio;
  Circulo(this.centro_x, this.centro_y, this.raio, String cor) : super(cor);
  @override
  String paraSVG() {
    return '<circle cx="$centro_x" cy="$centro_y" r="$raio" stroke="$cor" stroke-width="2" />';
  }
}

class Painel {
  List<Forma> formas = [];
  void adicionar(Forma f) => formas.add(f);
  void imprimirCodigo() {
    print('<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500">');
    for (var forma in formas) {
      print(' ${forma.paraSVG()}');
    }
    print('</svg>');
  }
}

void main() {
  var meuDesenho = Painel();
  meuDesenho.adicionar(Circulo(50, 50, 50, 'red'));
  meuDesenho.imprimirCodigo();
}
