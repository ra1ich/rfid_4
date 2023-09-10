// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInventoryRfidDocCollection on Isar {
  IsarCollection<InventoryRfidDoc> get inventoryRfidDocs => this.collection();
}

const InventoryRfidDocSchema = CollectionSchema(
  name: r'InventoryRfidDoc',
  id: -1700352667794571927,
  properties: {
    r'docId': PropertySchema(
      id: 0,
      name: r'docId',
      type: IsarType.string,
    ),
    r'docNumber': PropertySchema(
      id: 1,
      name: r'docNumber',
      type: IsarType.long,
    ),
    r'warehouseId': PropertySchema(
      id: 2,
      name: r'warehouseId',
      type: IsarType.string,
    )
  },
  estimateSize: _inventoryRfidDocEstimateSize,
  serialize: _inventoryRfidDocSerialize,
  deserialize: _inventoryRfidDocDeserialize,
  deserializeProp: _inventoryRfidDocDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _inventoryRfidDocGetId,
  getLinks: _inventoryRfidDocGetLinks,
  attach: _inventoryRfidDocAttach,
  version: '3.1.0+1',
);

int _inventoryRfidDocEstimateSize(
  InventoryRfidDoc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.docId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.warehouseId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _inventoryRfidDocSerialize(
  InventoryRfidDoc object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.docId);
  writer.writeLong(offsets[1], object.docNumber);
  writer.writeString(offsets[2], object.warehouseId);
}

InventoryRfidDoc _inventoryRfidDocDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InventoryRfidDoc();
  object.docId = reader.readStringOrNull(offsets[0]);
  object.docNumber = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.warehouseId = reader.readStringOrNull(offsets[2]);
  return object;
}

P _inventoryRfidDocDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _inventoryRfidDocGetId(InventoryRfidDoc object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inventoryRfidDocGetLinks(InventoryRfidDoc object) {
  return [];
}

void _inventoryRfidDocAttach(
    IsarCollection<dynamic> col, Id id, InventoryRfidDoc object) {
  object.id = id;
}

extension InventoryRfidDocQueryWhereSort
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QWhere> {
  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InventoryRfidDocQueryWhere
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QWhereClause> {
  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InventoryRfidDocQueryFilter
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QFilterCondition> {
  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'docId',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'docId',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'docId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docId',
        value: '',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'docId',
        value: '',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'docNumber',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'docNumber',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      docNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'warehouseId',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'warehouseId',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'warehouseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'warehouseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'warehouseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'warehouseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'warehouseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'warehouseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'warehouseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'warehouseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'warehouseId',
        value: '',
      ));
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterFilterCondition>
      warehouseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'warehouseId',
        value: '',
      ));
    });
  }
}

extension InventoryRfidDocQueryObject
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QFilterCondition> {}

extension InventoryRfidDocQueryLinks
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QFilterCondition> {}

extension InventoryRfidDocQuerySortBy
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QSortBy> {
  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy> sortByDocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      sortByDocIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      sortByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      sortByDocNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      sortByWarehouseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'warehouseId', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      sortByWarehouseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'warehouseId', Sort.desc);
    });
  }
}

extension InventoryRfidDocQuerySortThenBy
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QSortThenBy> {
  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy> thenByDocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      thenByDocIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      thenByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      thenByDocNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      thenByWarehouseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'warehouseId', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QAfterSortBy>
      thenByWarehouseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'warehouseId', Sort.desc);
    });
  }
}

extension InventoryRfidDocQueryWhereDistinct
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QDistinct> {
  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QDistinct> distinctByDocId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QDistinct>
      distinctByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docNumber');
    });
  }

  QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QDistinct>
      distinctByWarehouseId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'warehouseId', caseSensitive: caseSensitive);
    });
  }
}

extension InventoryRfidDocQueryProperty
    on QueryBuilder<InventoryRfidDoc, InventoryRfidDoc, QQueryProperty> {
  QueryBuilder<InventoryRfidDoc, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InventoryRfidDoc, String?, QQueryOperations> docIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docId');
    });
  }

  QueryBuilder<InventoryRfidDoc, int?, QQueryOperations> docNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docNumber');
    });
  }

  QueryBuilder<InventoryRfidDoc, String?, QQueryOperations>
      warehouseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'warehouseId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInventoryCollection on Isar {
  IsarCollection<Inventory> get inventorys => this.collection();
}

const InventorySchema = CollectionSchema(
  name: r'Inventory',
  id: 9013770421438767579,
  properties: {
    r'chId': PropertySchema(
      id: 0,
      name: r'chId',
      type: IsarType.string,
    ),
    r'chName': PropertySchema(
      id: 1,
      name: r'chName',
      type: IsarType.string,
    ),
    r'docNumber': PropertySchema(
      id: 2,
      name: r'docNumber',
      type: IsarType.long,
    ),
    r'itemCode': PropertySchema(
      id: 3,
      name: r'itemCode',
      type: IsarType.string,
    ),
    r'itemName': PropertySchema(
      id: 4,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'itemid': PropertySchema(
      id: 5,
      name: r'itemid',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 6,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'quantityFact': PropertySchema(
      id: 7,
      name: r'quantityFact',
      type: IsarType.long,
    )
  },
  estimateSize: _inventoryEstimateSize,
  serialize: _inventorySerialize,
  deserialize: _inventoryDeserialize,
  deserializeProp: _inventoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _inventoryGetId,
  getLinks: _inventoryGetLinks,
  attach: _inventoryAttach,
  version: '3.1.0+1',
);

int _inventoryEstimateSize(
  Inventory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.chId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.chName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _inventorySerialize(
  Inventory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chId);
  writer.writeString(offsets[1], object.chName);
  writer.writeLong(offsets[2], object.docNumber);
  writer.writeString(offsets[3], object.itemCode);
  writer.writeString(offsets[4], object.itemName);
  writer.writeString(offsets[5], object.itemid);
  writer.writeLong(offsets[6], object.quantity);
  writer.writeLong(offsets[7], object.quantityFact);
}

Inventory _inventoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Inventory();
  object.chId = reader.readStringOrNull(offsets[0]);
  object.chName = reader.readStringOrNull(offsets[1]);
  object.docNumber = reader.readLongOrNull(offsets[2]);
  object.id = id;
  object.itemCode = reader.readStringOrNull(offsets[3]);
  object.itemName = reader.readStringOrNull(offsets[4]);
  object.itemid = reader.readStringOrNull(offsets[5]);
  object.quantity = reader.readLong(offsets[6]);
  object.quantityFact = reader.readLong(offsets[7]);
  return object;
}

P _inventoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _inventoryGetId(Inventory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inventoryGetLinks(Inventory object) {
  return [];
}

void _inventoryAttach(IsarCollection<dynamic> col, Id id, Inventory object) {
  object.id = id;
}

extension InventoryQueryWhereSort
    on QueryBuilder<Inventory, Inventory, QWhere> {
  QueryBuilder<Inventory, Inventory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InventoryQueryWhere
    on QueryBuilder<Inventory, Inventory, QWhereClause> {
  QueryBuilder<Inventory, Inventory, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InventoryQueryFilter
    on QueryBuilder<Inventory, Inventory, QFilterCondition> {
  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chId',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chId',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chId',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chId',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chName',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chName',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chName',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> chNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chName',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> docNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'docNumber',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      docNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'docNumber',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> docNumberEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      docNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> docNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> docNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemCode',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      itemCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemCode',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      itemCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemid',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemid',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemid',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> itemidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemid',
        value: '',
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> quantityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> quantityFactEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityFact',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      quantityFactGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantityFact',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition>
      quantityFactLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantityFact',
        value: value,
      ));
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterFilterCondition> quantityFactBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantityFact',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InventoryQueryObject
    on QueryBuilder<Inventory, Inventory, QFilterCondition> {}

extension InventoryQueryLinks
    on QueryBuilder<Inventory, Inventory, QFilterCondition> {}

extension InventoryQuerySortBy on QueryBuilder<Inventory, Inventory, QSortBy> {
  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByChId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByChIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByChName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chName', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByChNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chName', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByDocNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByItemCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByItemCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByItemid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByItemidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByQuantityFact() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityFact', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> sortByQuantityFactDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityFact', Sort.desc);
    });
  }
}

extension InventoryQuerySortThenBy
    on QueryBuilder<Inventory, Inventory, QSortThenBy> {
  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByChId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByChIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByChName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chName', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByChNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chName', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByDocNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByItemCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByItemCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCode', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByItemid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByItemidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByQuantityFact() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityFact', Sort.asc);
    });
  }

  QueryBuilder<Inventory, Inventory, QAfterSortBy> thenByQuantityFactDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityFact', Sort.desc);
    });
  }
}

extension InventoryQueryWhereDistinct
    on QueryBuilder<Inventory, Inventory, QDistinct> {
  QueryBuilder<Inventory, Inventory, QDistinct> distinctByChId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByChName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docNumber');
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByItemCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByItemName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByItemid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<Inventory, Inventory, QDistinct> distinctByQuantityFact() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantityFact');
    });
  }
}

extension InventoryQueryProperty
    on QueryBuilder<Inventory, Inventory, QQueryProperty> {
  QueryBuilder<Inventory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Inventory, String?, QQueryOperations> chIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chId');
    });
  }

  QueryBuilder<Inventory, String?, QQueryOperations> chNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chName');
    });
  }

  QueryBuilder<Inventory, int?, QQueryOperations> docNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docNumber');
    });
  }

  QueryBuilder<Inventory, String?, QQueryOperations> itemCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemCode');
    });
  }

  QueryBuilder<Inventory, String?, QQueryOperations> itemNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemName');
    });
  }

  QueryBuilder<Inventory, String?, QQueryOperations> itemidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemid');
    });
  }

  QueryBuilder<Inventory, int, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<Inventory, int, QQueryOperations> quantityFactProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantityFact');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInventoryRfidCollection on Isar {
  IsarCollection<InventoryRfid> get inventoryRfids => this.collection();
}

const InventoryRfidSchema = CollectionSchema(
  name: r'InventoryRfid',
  id: -3040140672629103227,
  properties: {
    r'docNumber': PropertySchema(
      id: 0,
      name: r'docNumber',
      type: IsarType.long,
    ),
    r'teg': PropertySchema(
      id: 1,
      name: r'teg',
      type: IsarType.string,
    )
  },
  estimateSize: _inventoryRfidEstimateSize,
  serialize: _inventoryRfidSerialize,
  deserialize: _inventoryRfidDeserialize,
  deserializeProp: _inventoryRfidDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _inventoryRfidGetId,
  getLinks: _inventoryRfidGetLinks,
  attach: _inventoryRfidAttach,
  version: '3.1.0+1',
);

int _inventoryRfidEstimateSize(
  InventoryRfid object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.teg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _inventoryRfidSerialize(
  InventoryRfid object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.docNumber);
  writer.writeString(offsets[1], object.teg);
}

InventoryRfid _inventoryRfidDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InventoryRfid();
  object.docNumber = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.teg = reader.readStringOrNull(offsets[1]);
  return object;
}

P _inventoryRfidDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _inventoryRfidGetId(InventoryRfid object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inventoryRfidGetLinks(InventoryRfid object) {
  return [];
}

void _inventoryRfidAttach(
    IsarCollection<dynamic> col, Id id, InventoryRfid object) {
  object.id = id;
}

extension InventoryRfidQueryWhereSort
    on QueryBuilder<InventoryRfid, InventoryRfid, QWhere> {
  QueryBuilder<InventoryRfid, InventoryRfid, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InventoryRfidQueryWhere
    on QueryBuilder<InventoryRfid, InventoryRfid, QWhereClause> {
  QueryBuilder<InventoryRfid, InventoryRfid, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InventoryRfidQueryFilter
    on QueryBuilder<InventoryRfid, InventoryRfid, QFilterCondition> {
  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      docNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'docNumber',
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      docNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'docNumber',
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      docNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      docNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      docNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      docNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      tegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teg',
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      tegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teg',
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> tegEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      tegGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> tegLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> tegBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      tegStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> tegEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> tegContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition> tegMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      tegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teg',
        value: '',
      ));
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterFilterCondition>
      tegIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teg',
        value: '',
      ));
    });
  }
}

extension InventoryRfidQueryObject
    on QueryBuilder<InventoryRfid, InventoryRfid, QFilterCondition> {}

extension InventoryRfidQueryLinks
    on QueryBuilder<InventoryRfid, InventoryRfid, QFilterCondition> {}

extension InventoryRfidQuerySortBy
    on QueryBuilder<InventoryRfid, InventoryRfid, QSortBy> {
  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> sortByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy>
      sortByDocNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> sortByTeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teg', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> sortByTegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teg', Sort.desc);
    });
  }
}

extension InventoryRfidQuerySortThenBy
    on QueryBuilder<InventoryRfid, InventoryRfid, QSortThenBy> {
  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> thenByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy>
      thenByDocNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docNumber', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> thenByTeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teg', Sort.asc);
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QAfterSortBy> thenByTegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teg', Sort.desc);
    });
  }
}

extension InventoryRfidQueryWhereDistinct
    on QueryBuilder<InventoryRfid, InventoryRfid, QDistinct> {
  QueryBuilder<InventoryRfid, InventoryRfid, QDistinct> distinctByDocNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docNumber');
    });
  }

  QueryBuilder<InventoryRfid, InventoryRfid, QDistinct> distinctByTeg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teg', caseSensitive: caseSensitive);
    });
  }
}

extension InventoryRfidQueryProperty
    on QueryBuilder<InventoryRfid, InventoryRfid, QQueryProperty> {
  QueryBuilder<InventoryRfid, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InventoryRfid, int?, QQueryOperations> docNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docNumber');
    });
  }

  QueryBuilder<InventoryRfid, String?, QQueryOperations> tegProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teg');
    });
  }
}
