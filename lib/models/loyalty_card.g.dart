// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_card.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoyaltyCardCollection on Isar {
  IsarCollection<LoyaltyCard> get loyaltyCards => this.collection();
}

const LoyaltyCardSchema = CollectionSchema(
  name: r'LoyaltyCard',
  id: -1197774901200629762,
  properties: {
    r'checkedBoxes': PropertySchema(
      id: 0,
      name: r'checkedBoxes',
      type: IsarType.long,
    ),
    r'identifier': PropertySchema(
      id: 1,
      name: r'identifier',
      type: IsarType.string,
    ),
    r'lastRewardDate': PropertySchema(
      id: 2,
      name: r'lastRewardDate',
      type: IsarType.dateTime,
    ),
    r'lastUpdated': PropertySchema(
      id: 3,
      name: r'lastUpdated',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'registrationDate': PropertySchema(
      id: 5,
      name: r'registrationDate',
      type: IsarType.dateTime,
    ),
    r'rewardCount': PropertySchema(
      id: 6,
      name: r'rewardCount',
      type: IsarType.long,
    )
  },
  estimateSize: _loyaltyCardEstimateSize,
  serialize: _loyaltyCardSerialize,
  deserialize: _loyaltyCardDeserialize,
  deserializeProp: _loyaltyCardDeserializeProp,
  idName: r'id',
  indexes: {
    r'identifier': IndexSchema(
      id: -1091831983288130400,
      name: r'identifier',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'identifier',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _loyaltyCardGetId,
  getLinks: _loyaltyCardGetLinks,
  attach: _loyaltyCardAttach,
  version: '3.1.0+1',
);

int _loyaltyCardEstimateSize(
  LoyaltyCard object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.identifier.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _loyaltyCardSerialize(
  LoyaltyCard object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.checkedBoxes);
  writer.writeString(offsets[1], object.identifier);
  writer.writeDateTime(offsets[2], object.lastRewardDate);
  writer.writeDateTime(offsets[3], object.lastUpdated);
  writer.writeString(offsets[4], object.name);
  writer.writeDateTime(offsets[5], object.registrationDate);
  writer.writeLong(offsets[6], object.rewardCount);
}

LoyaltyCard _loyaltyCardDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoyaltyCard();
  object.checkedBoxes = reader.readLong(offsets[0]);
  object.id = id;
  object.identifier = reader.readString(offsets[1]);
  object.lastRewardDate = reader.readDateTimeOrNull(offsets[2]);
  object.lastUpdated = reader.readDateTime(offsets[3]);
  object.name = reader.readString(offsets[4]);
  object.registrationDate = reader.readDateTime(offsets[5]);
  object.rewardCount = reader.readLong(offsets[6]);
  return object;
}

P _loyaltyCardDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _loyaltyCardGetId(LoyaltyCard object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loyaltyCardGetLinks(LoyaltyCard object) {
  return [];
}

void _loyaltyCardAttach(
    IsarCollection<dynamic> col, Id id, LoyaltyCard object) {
  object.id = id;
}

extension LoyaltyCardByIndex on IsarCollection<LoyaltyCard> {
  Future<LoyaltyCard?> getByIdentifier(String identifier) {
    return getByIndex(r'identifier', [identifier]);
  }

  LoyaltyCard? getByIdentifierSync(String identifier) {
    return getByIndexSync(r'identifier', [identifier]);
  }

  Future<bool> deleteByIdentifier(String identifier) {
    return deleteByIndex(r'identifier', [identifier]);
  }

  bool deleteByIdentifierSync(String identifier) {
    return deleteByIndexSync(r'identifier', [identifier]);
  }

  Future<List<LoyaltyCard?>> getAllByIdentifier(List<String> identifierValues) {
    final values = identifierValues.map((e) => [e]).toList();
    return getAllByIndex(r'identifier', values);
  }

  List<LoyaltyCard?> getAllByIdentifierSync(List<String> identifierValues) {
    final values = identifierValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'identifier', values);
  }

  Future<int> deleteAllByIdentifier(List<String> identifierValues) {
    final values = identifierValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'identifier', values);
  }

  int deleteAllByIdentifierSync(List<String> identifierValues) {
    final values = identifierValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'identifier', values);
  }

  Future<Id> putByIdentifier(LoyaltyCard object) {
    return putByIndex(r'identifier', object);
  }

  Id putByIdentifierSync(LoyaltyCard object, {bool saveLinks = true}) {
    return putByIndexSync(r'identifier', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByIdentifier(List<LoyaltyCard> objects) {
    return putAllByIndex(r'identifier', objects);
  }

  List<Id> putAllByIdentifierSync(List<LoyaltyCard> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'identifier', objects, saveLinks: saveLinks);
  }
}

extension LoyaltyCardQueryWhereSort
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QWhere> {
  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoyaltyCardQueryWhere
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QWhereClause> {
  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause> idBetween(
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

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause> identifierEqualTo(
      String identifier) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'identifier',
        value: [identifier],
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterWhereClause>
      identifierNotEqualTo(String identifier) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'identifier',
              lower: [],
              upper: [identifier],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'identifier',
              lower: [identifier],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'identifier',
              lower: [identifier],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'identifier',
              lower: [],
              upper: [identifier],
              includeUpper: false,
            ));
      }
    });
  }
}

extension LoyaltyCardQueryFilter
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QFilterCondition> {
  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      checkedBoxesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkedBoxes',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      checkedBoxesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkedBoxes',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      checkedBoxesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkedBoxes',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      checkedBoxesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkedBoxes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'identifier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'identifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'identifier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identifier',
        value: '',
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      identifierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'identifier',
        value: '',
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastRewardDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastRewardDate',
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastRewardDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastRewardDate',
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastRewardDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastRewardDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastRewardDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastRewardDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastRewardDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastRewardDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastRewardDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastRewardDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastUpdatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastUpdatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastUpdatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdated',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      lastUpdatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      registrationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      registrationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      registrationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'registrationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      registrationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'registrationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      rewardCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rewardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      rewardCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rewardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      rewardCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rewardCount',
        value: value,
      ));
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterFilterCondition>
      rewardCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rewardCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LoyaltyCardQueryObject
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QFilterCondition> {}

extension LoyaltyCardQueryLinks
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QFilterCondition> {}

extension LoyaltyCardQuerySortBy
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QSortBy> {
  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByCheckedBoxes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedBoxes', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      sortByCheckedBoxesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedBoxes', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByIdentifier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifier', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByIdentifierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifier', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByLastRewardDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastRewardDate', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      sortByLastRewardDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastRewardDate', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      sortByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      sortByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByRewardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardCount', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> sortByRewardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardCount', Sort.desc);
    });
  }
}

extension LoyaltyCardQuerySortThenBy
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QSortThenBy> {
  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByCheckedBoxes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedBoxes', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      thenByCheckedBoxesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedBoxes', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByIdentifier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifier', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByIdentifierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identifier', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByLastRewardDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastRewardDate', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      thenByLastRewardDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastRewardDate', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByLastUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdated', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      thenByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy>
      thenByRegistrationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'registrationDate', Sort.desc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByRewardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardCount', Sort.asc);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QAfterSortBy> thenByRewardCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rewardCount', Sort.desc);
    });
  }
}

extension LoyaltyCardQueryWhereDistinct
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> {
  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> distinctByCheckedBoxes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkedBoxes');
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> distinctByIdentifier(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'identifier', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> distinctByLastRewardDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastRewardDate');
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> distinctByLastUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdated');
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct>
      distinctByRegistrationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'registrationDate');
    });
  }

  QueryBuilder<LoyaltyCard, LoyaltyCard, QDistinct> distinctByRewardCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rewardCount');
    });
  }
}

extension LoyaltyCardQueryProperty
    on QueryBuilder<LoyaltyCard, LoyaltyCard, QQueryProperty> {
  QueryBuilder<LoyaltyCard, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LoyaltyCard, int, QQueryOperations> checkedBoxesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkedBoxes');
    });
  }

  QueryBuilder<LoyaltyCard, String, QQueryOperations> identifierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'identifier');
    });
  }

  QueryBuilder<LoyaltyCard, DateTime?, QQueryOperations>
      lastRewardDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastRewardDate');
    });
  }

  QueryBuilder<LoyaltyCard, DateTime, QQueryOperations> lastUpdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdated');
    });
  }

  QueryBuilder<LoyaltyCard, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<LoyaltyCard, DateTime, QQueryOperations>
      registrationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'registrationDate');
    });
  }

  QueryBuilder<LoyaltyCard, int, QQueryOperations> rewardCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rewardCount');
    });
  }
}
