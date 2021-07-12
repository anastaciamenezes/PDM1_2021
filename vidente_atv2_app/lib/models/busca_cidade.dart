class Cidade {
  final int key;
  final String name;
  final String countryID;
  final String codigo;
  
  Cidade({
    this.key, 
    this.name, 
    this.countryID, 
    this.codigo, 
  });
  
  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'localizedName': name,
      'countryID': countryID,
      'codigo': codigo,
    };
  }

  factory Cidade.transformarJSON(Map<String, dynamic> objJson) {
    return Cidade(
      key: int.parse(objJson['key']),
      name: objJson['localizedName'],
      countryID: objJson['countryID'],
      codigo: objJson['code']
    );
  }

  @override
  String toString() {
    return 'Cidade{key: $key, localizedName: $name, countryID: $countryID, codigo: $codigo}';
  }
}