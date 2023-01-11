import 'package:consumo_api/models/aluno.dart';
import 'package:consumo_api/repositories/alunos_repository.dart';

class AlunosController {
  final AlunosRepository _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    List<Aluno> alunos = await _alunosRepository.findAll() as List<Aluno>;
    alunos.forEach(print);
  }

  Future<Aluno> findById(String id) async {
    Aluno aluno = await _alunosRepository.findById(id) as Aluno;
    print(aluno);
    return aluno;
  }

  Future<void> update(Aluno aluno) async {
    await _alunosRepository.update(aluno);
  }

  Future<void> insert(Aluno aluno) async {
    await _alunosRepository.insert(aluno);
  }

  Future<void> delete(String id) async {
    await _alunosRepository.delete(id);
  }
}
