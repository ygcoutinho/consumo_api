import 'package:consumo_api/models/aluno.dart';
import 'package:consumo_api/repositories/alunos_repository.dart';

class AlunosController {
  final AlunosRepository _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    List<Aluno> alunos = await _alunosRepository.findAll();

    alunos.forEach(print);
  }

  Future<Aluno> findById(String id) async {
    Aluno aluno = await _alunosRepository.findById(id);
    print(aluno);
    return aluno;
  }

  Future<void> update(Aluno aluno) async {
    try {
      await _alunosRepository.update(aluno);
    } catch (e) {
      print("$e: Erro ao tentar atualizar");
    } finally {
      print("### Dados atualizados ###");
      print(aluno);
    }
  }
}
