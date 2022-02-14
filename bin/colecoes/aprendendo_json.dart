import 'dart:convert';

void main() {
  Map <String, dynamic> data = json.decode(dados());
  print(data.keys);
}

String dados() {
  return """
  {
  "nome": "Nathan Gonçalves",
  "idade": 18,
  "solteiro": true
}
""";
}