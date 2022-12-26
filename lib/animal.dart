class Animal {
  int id;
  String nombre;
  String especie;
  String cantidad;
  Animal(
      {required this.id,
      required this.nombre,
      required this.especie,
      required this.cantidad});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'especie': especie,
      'cantidad': cantidad
    };
  }

  @override
  String toString() {
    return 'Animal{id: $id, nombre: $nombre, especie: $especie,cantidad:$cantidad}';
  }
}
