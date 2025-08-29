import 'dart:io';
class Products{
  String name; // atributo obrigatorio
  double price;
  String? description; //isso é opcional pois possui "?" que faz com que não seja obrigatório

  Products({ required this.name, required this.price, this.description}); //esse required e o {} faz com que seja obrigatorio


}

void main(){
  Products Coca = Products(name: "Coquinha gelada", price: 10.00);
  Products Pepsi = Products(name: "Pepsi gelada é gelado", price: 4.00, description: "Pepsi é um refrigerante que tem muito açúcar");
}