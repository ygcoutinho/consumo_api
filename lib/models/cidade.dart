// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cidade {
  final int id;
  final String nome;

  Cidade({
    required this.id,
    required this.nome,
  });

  //Retorna um map baseado no objeto da classe
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }

  //cria um objeto da classe com informações vindas de um map
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map["id"] ?? 0,
      nome: map["nome"] ?? "",
    );
  }

  //transformando o map criado em um String do tipo json
  String toJson() => jsonEncode(toMap());

  //transformando o json em um map, para que o método fromMap da classe
  //possa transformar o map em objeto
  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));

  @override
  String toString() => '''Cidade: $nome''';
}
