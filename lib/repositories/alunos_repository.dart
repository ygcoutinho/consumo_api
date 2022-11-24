import 'dart:convert';

import 'package:consumo_api/models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunosRepository {
  String url = "http://localhost:3031/alunos";

  //Busca
  Future<List<Aluno>?> findAll() async {
    try {
      final response = await http.get(Uri.parse(url));
      final alunosList = jsonDecode(response.body) as List;
      return alunosList.map<Aluno>((aluno) => Aluno.fromMap(aluno)).toList();
    } catch (e) {
      print("$e : Não foi possível acessar os dados.");
      return null;
    }
  }

  Future<Aluno?> findById(String id) async {
    try {
      final response = await http.get(Uri.parse("$url/$id"));
      return Aluno.fromMap(jsonDecode(response.body));
    } catch (e) {
      print("$e : Não foi possível acessar os dados.");
      return null;
    }
  }

  //Atualização
  Future<void> update(Aluno aluno) async {
    try {
      await http.put(
        Uri.parse("$url/${aluno.id}"),
        headers: {"Content-Type": "application/json"},
        body: aluno.toJson(),
      );
    } catch (e) {
      print("$e : Erro ao atualizar dados");
    }
  }

  //Inserção
  Future<void> insert(Aluno aluno) async {
    try {
      print(url);
      await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: aluno.toJson(),
      );
    } catch (e) {
      print("$e : Erro ao tentar inserir dados");
    }
  }
}
