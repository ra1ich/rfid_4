// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectingsettings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetConnectingSettingsCollection on Isar {
  IsarCollection<ConnectingSettings> get connectingSettings =>
      this.collection();
}

const ConnectingSettingsSchema = CollectionSchema(
  name: r'ConnectingSettings',
  id: 2898516279416037731,
  properties: {
    r'httppath': PropertySchema(
      id: 0,
      name: r'httppath',
      type: IsarType.string,
    ),
    r'login': PropertySchema(
      id: 1,
      name: r'login',
      type: IsarType.string,
    ),
    r'password': PropertySchema(
      id: 2,
      name: r'password',
      type: IsarType.string,
    )
  },
  estimateSize: _connectingSettingsEstimateSize,
  serialize: _connectingSettingsSerialize,
  deserialize: _connectingSettingsDeserialize,
  deserializeProp: _connectingSettingsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _connectingSettingsGetId,
  getLinks: _connectingSettingsGetLinks,
  attach: _connectingSettingsAttach,
  version: '3.1.0+1',
);

int _connectingSettingsEstimateSize(
  ConnectingSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.httppath.length * 3;
  bytesCount += 3 + object.login.length * 3;
  bytesCount += 3 + object.password.length * 3;
  return bytesCount;
}

void _connectingSettingsSerialize(
  ConnectingSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.httppath);
  writer.writeString(offsets[1], object.login);
  writer.writeString(offsets[2], object.password);
}

ConnectingSettings _connectingSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConnectingSettings();
  object.httppath = reader.readString(offsets[0]);
  object.id = id;
  object.login = reader.readString(offsets[1]);
  object.password = reader.readString(offsets[2]);
  return object;
}

P _connectingSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _connectingSettingsGetId(ConnectingSettings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _connectingSettingsGetLinks(
    ConnectingSettings object) {
  return [];
}

void _connectingSettingsAttach(
    IsarCollection<dynamic> col, Id id, ConnectingSettings object) {
  object.id = id;
}

extension ConnectingSettingsQueryWhereSort
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QWhere> {
  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConnectingSettingsQueryWhere
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QWhereClause> {
  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterWhereClause>
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

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterWhereClause>
      idBetween(
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

extension ConnectingSettingsQueryFilter
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QFilterCondition> {
  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'httppath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'httppath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'httppath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'httppath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'httppath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'httppath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'httppath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'httppath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'httppath',
        value: '',
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      httppathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'httppath',
        value: '',
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
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

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
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

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
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

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'login',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'login',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'login',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'login',
        value: '',
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }
}

extension ConnectingSettingsQueryObject
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QFilterCondition> {}

extension ConnectingSettingsQueryLinks
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QFilterCondition> {}

extension ConnectingSettingsQuerySortBy
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QSortBy> {
  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      sortByHttppath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'httppath', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      sortByHttppathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'httppath', Sort.desc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      sortByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      sortByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }
}

extension ConnectingSettingsQuerySortThenBy
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QSortThenBy> {
  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByHttppath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'httppath', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByHttppathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'httppath', Sort.desc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QAfterSortBy>
      thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }
}

extension ConnectingSettingsQueryWhereDistinct
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QDistinct> {
  QueryBuilder<ConnectingSettings, ConnectingSettings, QDistinct>
      distinctByHttppath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'httppath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QDistinct>
      distinctByLogin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'login', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ConnectingSettings, ConnectingSettings, QDistinct>
      distinctByPassword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }
}

extension ConnectingSettingsQueryProperty
    on QueryBuilder<ConnectingSettings, ConnectingSettings, QQueryProperty> {
  QueryBuilder<ConnectingSettings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ConnectingSettings, String, QQueryOperations>
      httppathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'httppath');
    });
  }

  QueryBuilder<ConnectingSettings, String, QQueryOperations> loginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'login');
    });
  }

  QueryBuilder<ConnectingSettings, String, QQueryOperations>
      passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }
}
