// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectRolesModelStruct extends BaseStruct {
  ProjectRolesModelStruct({
    int? id,
    String? roleName,
  })  : _id = id,
        _roleName = roleName;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "roleName" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  set roleName(String? val) => _roleName = val;

  bool hasRoleName() => _roleName != null;

  static ProjectRolesModelStruct fromMap(Map<String, dynamic> data) =>
      ProjectRolesModelStruct(
        id: castToType<int>(data['id']),
        roleName: data['roleName'] as String?,
      );

  static ProjectRolesModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectRolesModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'roleName': _roleName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'roleName': serializeParam(
          _roleName,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectRolesModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProjectRolesModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        roleName: deserializeParam(
          data['roleName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectRolesModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectRolesModelStruct &&
        id == other.id &&
        roleName == other.roleName;
  }

  @override
  int get hashCode => const ListEquality().hash([id, roleName]);
}

ProjectRolesModelStruct createProjectRolesModelStruct({
  int? id,
  String? roleName,
}) =>
    ProjectRolesModelStruct(
      id: id,
      roleName: roleName,
    );
