// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicineStruct extends BaseStruct {
  MedicineStruct({
    String? id,
    String? name,
    String? description,
    int? level,
    String? price,
    int? quantity,
    String? createdAt,
    String? status,
    String? imageUrl,
  })  : _id = id,
        _name = name,
        _description = description,
        _level = level,
        _price = price,
        _quantity = quantity,
        _createdAt = createdAt,
        _status = status,
        _imageUrl = imageUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  set level(int? val) => _level = val;

  void incrementLevel(int amount) => level = level + amount;

  bool hasLevel() => _level != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static MedicineStruct fromMap(Map<String, dynamic> data) => MedicineStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        level: castToType<int>(data['level']),
        price: data['price'] as String?,
        quantity: castToType<int>(data['quantity']),
        createdAt: data['createdAt'] as String?,
        status: data['status'] as String?,
        imageUrl: data['imageUrl'] as String?,
      );

  static MedicineStruct? maybeFromMap(dynamic data) =>
      data is Map ? MedicineStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'level': _level,
        'price': _price,
        'quantity': _quantity,
        'createdAt': _createdAt,
        'status': _status,
        'imageUrl': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'level': serializeParam(
          _level,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static MedicineStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedicineStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        level: deserializeParam(
          data['level'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MedicineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicineStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        level == other.level &&
        price == other.price &&
        quantity == other.quantity &&
        createdAt == other.createdAt &&
        status == other.status &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        level,
        price,
        quantity,
        createdAt,
        status,
        imageUrl
      ]);
}

MedicineStruct createMedicineStruct({
  String? id,
  String? name,
  String? description,
  int? level,
  String? price,
  int? quantity,
  String? createdAt,
  String? status,
  String? imageUrl,
}) =>
    MedicineStruct(
      id: id,
      name: name,
      description: description,
      level: level,
      price: price,
      quantity: quantity,
      createdAt: createdAt,
      status: status,
      imageUrl: imageUrl,
    );
