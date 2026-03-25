class Animal {
  String nome;
  Animal(this.nome);
  String emitirSom() {
    return "$nome está fazendo um som.";
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);
  @override
  String emitirSom() {
   return ("$nome diz: Miau!");
  }
}

void main(){
  var animal = Gato("V");
  print(animal.emitirSom());

}
