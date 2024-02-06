enum ClassificacaoImc {
  magrezaGrave("Magreza grave"),
  magrezaModerada("Magreza moderada"),
  magrezaLeve("Magreza leve"),
  saudavel("Saudável"),
  sobrepeso("Sobrepeso"),
  obesidadeGrauI("Obesidade Grau I"),
  obesidadeGrauII("Obesidade Grau II (severa)"),
  obesidadeGrauIII("Obesidade Grau III (mórbida)");

  final String? descricao;

  const ClassificacaoImc(this.descricao);

  @override
  String toString() => descricao!;
}
