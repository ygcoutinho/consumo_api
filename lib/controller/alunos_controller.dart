import 'package:consumo_api/models/aluno.dart';
import 'package:consumo_api/repositories/alunos_repository.dart';

class AlunosController {
  final AlunosRepository _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    List<Aluno> alunos = await _alunosRepository.findAll();

    alunos.forEach(print);
  }
}