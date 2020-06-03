class Conta {
  
  int id;
  String nome;
  double saldo;

  Conta({this.id, this.nome, this.saldo});

  Conta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    saldo = json['saldo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['saldo'] = this.saldo;
    return data;
  }
}