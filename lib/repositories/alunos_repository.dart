import 'dart:convert';

import 'package:consumo_api/models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    String url = "http://localhost:3031/alunos";
    final response = await http.get(Uri.parse(url));
    final alunosList = jsonDecode(response.body) as List;

    return alunosList.map<Aluno>((aluno) => Aluno.fromMap(aluno)).toList();
  }
}
