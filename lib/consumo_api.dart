import 'package:consumo_api/controller/alunos_controller.dart';
import 'package:consumo_api/models/aluno.dart';

Future<void> main() async {
  AlunosController alunosController = AlunosController();
  //alunosController.findAll();
  alunosController.findById("1");

  // Aluno aluno = await alunosController.findById("1");
  // aluno.nomeCursos.add("Lógica de programação");
  // alunosController.update(aluno);
}
