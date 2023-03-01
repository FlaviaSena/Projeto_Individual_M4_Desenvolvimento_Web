CREATE TABLE `professor` (
  `id` int PRIMARY KEY,
  `email` varchar(255),
  `nome` varchar(255),
  `disciplina` varchar(255),
  `matricula_prof` varchar(255)
);

CREATE TABLE `aluno` (
  `id` int PRIMARY KEY,
  `email` varchar(255),
  `nome` varchar(255),
  `disciplina` varchar(255),
  `matricula_aluno` varchar(255)
);

CREATE TABLE `turma` (
  `id` int PRIMARY KEY,
  `sala` varchar(255),
  `curso` varchar(255),
  `professor` varchar(255)
);

CREATE TABLE `curso` (
  `id` int PRIMARY KEY,
  `alunos` varchar(255),
  `codigo_curso` int,
  `nome_curso` varchar(255)
);

CREATE TABLE `disciplina` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `matricula_prof` varchar(255)
);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id`) REFERENCES `professor` (`id`);

ALTER TABLE `turma` ADD FOREIGN KEY (`id`) REFERENCES `professor` (`id`);

ALTER TABLE `disciplina` ADD FOREIGN KEY (`id`) REFERENCES `aluno` (`id`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id`) REFERENCES `turma` (`id`);

ALTER TABLE `aluno` ADD FOREIGN KEY (`id`) REFERENCES `curso` (`id`);

ALTER TABLE `disciplina` ADD FOREIGN KEY (`id`) REFERENCES `curso` (`id`);
