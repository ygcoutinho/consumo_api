import 'package:consumo_api/controller/alunos_controller.dart';
import 'package:consumo_api/models/aluno.dart';
import 'package:consumo_api/models/cidade.dart';
import 'package:consumo_api/models/curso.dart';
import 'package:consumo_api/models/endereco.dart';
import 'package:consumo_api/models/telefone.dart';

Future<void> main() async {
  AlunosController alunosController = AlunosController();
  //alunosController.findAll();
  //alunosController.findById("1");

  // Aluno aluno = await alunosController.findById("1");
  // aluno.nomeCursos.add("Lógica de programação");
  // alunosController.update(aluno);

  Aluno novoAluno = Aluno(
    id: "",
    nome: "Bruno",
    idade: 40,
    nomeCursos: ["Curso 1, Curso 2"],
    endereco: Endereco(
      rua: "Rua xyz",
      numero: 10,
      cep: "80740-30",
      cidade: Cidade(id: 3, nome: "Tangamandápio"),
      telefone: Telefone(ddd: 41, telefone: "93333-4444"),
    ),
    cursos: [
      Curso(
        id: 4,
        nome: "Coach Quantico",
        isAluno: true,
      ),
    ],
  );
  //print(novoAluno);

  //alunosController.insert(novoAluno);
  //alunosController.findById("b702ca70-6ba6-11ed-a57b-a16390579d57");
  alunosController.delete("b702ca70-6ba6-11ed-a57b-a16390579d57");
}
