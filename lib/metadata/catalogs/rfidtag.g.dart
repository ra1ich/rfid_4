// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rfidtag.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRfidTagCollection on Isar {
  IsarCollection<RfidTag> get rfidTags => this.collection();
}

const RfidTagSchema = CollectionSchema(
  name: r'RfidTag',
  id: -8685155444997970268,
  properties: {
    r'chId': PropertySchema(
      id: 0,
      name: r'chId',
      type: IsarType.string,
    ),
    r'itemid': PropertySchema(
      id: 1,
      name: r'itemid',
      type: IsarType.string,
    ),
    r'tag': PropertySchema(
      id: 2,
      name: r'tag',
      type: IsarType.string,
    )
  },
  estimateSize: _rfidTagEstimateSize,
  serialize: _rfidTagSerialize,
  deserialize: _rfidTagDeserialize,
  deserializeProp: _rfidTagDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _rfidTagGetId,
  getLinks: _rfidTagGetLinks,
  attach: _rfidTagAttach,
  version: '3.1.0+1',
);

int _rfidTagEstimateSize(
  RfidTag object,
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
    final value = object.itemid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tag;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _rfidTagSerialize(
  RfidTag object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chId);
  writer.writeString(offsets[1], object.itemid);
  writer.writeString(offsets[2], object.tag);
}

RfidTag _rfidTagDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RfidTag();
  object.chId = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.itemid = reader.readStringOrNull(offsets[1]);
  object.tag = reader.readStringOrNull(offsets[2]);
  return object;
}

P _rfidTagDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rfidTagGetId(RfidTag object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rfidTagGetLinks(RfidTag object) {
  return [];
}

void _rfidTagAttach(IsarCollection<dynamic> col, Id id, RfidTag object) {
  object.id = id;
}

extension RfidTagQueryWhereSort on QueryBuilder<RfidTag, RfidTag, QWhere> {
  QueryBuilder<RfidTag, RfidTag, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RfidTagQueryWhere on QueryBuilder<RfidTag, RfidTag, QWhereClause> {
  QueryBuilder<RfidTag, RfidTag, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<RfidTag, RfidTag, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterWhereClause> idBetween(
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

extension RfidTagQueryFilter
    on QueryBuilder<RfidTag, RfidTag, QFilterCondition> {
  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chId',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chId',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdEqualTo(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdGreaterThan(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdLessThan(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdBetween(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdStartsWith(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdEndsWith(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdContains(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdMatches(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chId',
        value: '',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> chIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chId',
        value: '',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> idBetween(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemid',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemid',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidEqualTo(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidGreaterThan(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidLessThan(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidBetween(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidStartsWith(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidEndsWith(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidContains(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidMatches(
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

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemid',
        value: '',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> itemidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemid',
        value: '',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tag',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tag',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tag',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tag',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tag',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tag',
        value: '',
      ));
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterFilterCondition> tagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tag',
        value: '',
      ));
    });
  }
}

extension RfidTagQueryObject
    on QueryBuilder<RfidTag, RfidTag, QFilterCondition> {}

extension RfidTagQueryLinks
    on QueryBuilder<RfidTag, RfidTag, QFilterCondition> {}

extension RfidTagQuerySortBy on QueryBuilder<RfidTag, RfidTag, QSortBy> {
  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> sortByChId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> sortByChIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.desc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> sortByItemid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> sortByItemidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.desc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> sortByTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> sortByTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.desc);
    });
  }
}

extension RfidTagQuerySortThenBy
    on QueryBuilder<RfidTag, RfidTag, QSortThenBy> {
  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByChId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByChIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chId', Sort.desc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByItemid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByItemidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemid', Sort.desc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByTag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.asc);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QAfterSortBy> thenByTagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tag', Sort.desc);
    });
  }
}

extension RfidTagQueryWhereDistinct
    on QueryBuilder<RfidTag, RfidTag, QDistinct> {
  QueryBuilder<RfidTag, RfidTag, QDistinct> distinctByChId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QDistinct> distinctByItemid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RfidTag, RfidTag, QDistinct> distinctByTag(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tag', caseSensitive: caseSensitive);
    });
  }
}

extension RfidTagQueryProperty
    on QueryBuilder<RfidTag, RfidTag, QQueryProperty> {
  QueryBuilder<RfidTag, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RfidTag, String?, QQueryOperations> chIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chId');
    });
  }

  QueryBuilder<RfidTag, String?, QQueryOperations> itemidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemid');
    });
  }

  QueryBuilder<RfidTag, String?, QQueryOperations> tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tag');
    });
  }
}
