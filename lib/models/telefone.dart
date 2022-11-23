// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  final int ddd;
  final String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  // é um método que pega o objeto (telefone) e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      "ddd": ddd,
      "telefone": telefone,
    };
  }

  //é um CONSTRUTOR, ele vai pegar um MAP e transformar em um objeto TELEFONE
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map["ddd"] ?? 0,
      telefone: map["telefone"] ?? "",
    );
  }

  //é um método que retorna uma String json do objeto Telefone
  String toJson() => jsonEncode(toMap());

  //é um método que baseado em uma String json, retorna um objeto telefone
  //primeiro fazendo o decode do json de string para um map, depois chamando
  //o método fromMap para transformar em um objeto telefone
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => "($ddd) $telefone";
}
