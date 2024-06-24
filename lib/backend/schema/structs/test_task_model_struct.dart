// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestTaskModelStruct extends BaseStruct {
  TestTaskModelStruct({
    int? id,
    String? taskName,
    String? startDate,
    String? endDate,
    String? description,
    String? status,
    int? plannedHours,
    String? taskType,
    String? parentTaskId,
    int? sectionId,
    int? createdBy,
    String? createdAt,
    String? updatedAt,
    int? projectId,
    int? userId,
    ProjectsStruct? projects,
    UserStruct? user,
    int? consumedHours,
  })  : _id = id,
        _taskName = taskName,
        _startDate = startDate,
        _endDate = endDate,
        _description = description,
        _status = status,
        _plannedHours = plannedHours,
        _taskType = taskType,
        _parentTaskId = parentTaskId,
        _sectionId = sectionId,
        _createdBy = createdBy,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _projectId = projectId,
        _userId = userId,
        _projects = projects,
        _user = user,
        _consumedHours = consumedHours;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  set taskName(String? val) => _taskName = val;

  bool hasTaskName() => _taskName != null;

  // "startDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "plannedHours" field.
  int? _plannedHours;
  int get plannedHours => _plannedHours ?? 0;
  set plannedHours(int? val) => _plannedHours = val;

  void incrementPlannedHours(int amount) =>
      plannedHours = plannedHours + amount;

  bool hasPlannedHours() => _plannedHours != null;

  // "taskType" field.
  String? _taskType;
  String get taskType => _taskType ?? '';
  set taskType(String? val) => _taskType = val;

  bool hasTaskType() => _taskType != null;

  // "parentTaskId" field.
  String? _parentTaskId;
  String get parentTaskId => _parentTaskId ?? '';
  set parentTaskId(String? val) => _parentTaskId = val;

  bool hasParentTaskId() => _parentTaskId != null;

  // "sectionId" field.
  int? _sectionId;
  int get sectionId => _sectionId ?? 0;
  set sectionId(int? val) => _sectionId = val;

  void incrementSectionId(int amount) => sectionId = sectionId + amount;

  bool hasSectionId() => _sectionId != null;

  // "createdBy" field.
  int? _createdBy;
  int get createdBy => _createdBy ?? 0;
  set createdBy(int? val) => _createdBy = val;

  void incrementCreatedBy(int amount) => createdBy = createdBy + amount;

  bool hasCreatedBy() => _createdBy != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "projectId" field.
  int? _projectId;
  int get projectId => _projectId ?? 0;
  set projectId(int? val) => _projectId = val;

  void incrementProjectId(int amount) => projectId = projectId + amount;

  bool hasProjectId() => _projectId != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "projects" field.
  ProjectsStruct? _projects;
  ProjectsStruct get projects => _projects ?? ProjectsStruct();
  set projects(ProjectsStruct? val) => _projects = val;

  void updateProjects(Function(ProjectsStruct) updateFn) {
    updateFn(projects ??= ProjectsStruct());
  }

  bool hasProjects() => _projects != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  // "consumedHours" field.
  int? _consumedHours;
  int get consumedHours => _consumedHours ?? 0;
  set consumedHours(int? val) => _consumedHours = val;

  void incrementConsumedHours(int amount) =>
      consumedHours = consumedHours + amount;

  bool hasConsumedHours() => _consumedHours != null;

  static TestTaskModelStruct fromMap(Map<String, dynamic> data) =>
      TestTaskModelStruct(
        id: castToType<int>(data['id']),
        taskName: data['taskName'] as String?,
        startDate: data['startDate'] as String?,
        endDate: data['endDate'] as String?,
        description: data['description'] as String?,
        status: data['status'] as String?,
        plannedHours: castToType<int>(data['plannedHours']),
        taskType: data['taskType'] as String?,
        parentTaskId: data['parentTaskId'] as String?,
        sectionId: castToType<int>(data['sectionId']),
        createdBy: castToType<int>(data['createdBy']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        projectId: castToType<int>(data['projectId']),
        userId: castToType<int>(data['userId']),
        projects: ProjectsStruct.maybeFromMap(data['projects']),
        user: UserStruct.maybeFromMap(data['user']),
        consumedHours: castToType<int>(data['consumedHours']),
      );

  static TestTaskModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TestTaskModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'taskName': _taskName,
        'startDate': _startDate,
        'endDate': _endDate,
        'description': _description,
        'status': _status,
        'plannedHours': _plannedHours,
        'taskType': _taskType,
        'parentTaskId': _parentTaskId,
        'sectionId': _sectionId,
        'createdBy': _createdBy,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'projectId': _projectId,
        'userId': _userId,
        'projects': _projects?.toMap(),
        'user': _user?.toMap(),
        'consumedHours': _consumedHours,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'taskName': serializeParam(
          _taskName,
          ParamType.String,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'plannedHours': serializeParam(
          _plannedHours,
          ParamType.int,
        ),
        'taskType': serializeParam(
          _taskType,
          ParamType.String,
        ),
        'parentTaskId': serializeParam(
          _parentTaskId,
          ParamType.String,
        ),
        'sectionId': serializeParam(
          _sectionId,
          ParamType.int,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'projectId': serializeParam(
          _projectId,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'projects': serializeParam(
          _projects,
          ParamType.DataStruct,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'consumedHours': serializeParam(
          _consumedHours,
          ParamType.int,
        ),
      }.withoutNulls;

  static TestTaskModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestTaskModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        taskName: deserializeParam(
          data['taskName'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        plannedHours: deserializeParam(
          data['plannedHours'],
          ParamType.int,
          false,
        ),
        taskType: deserializeParam(
          data['taskType'],
          ParamType.String,
          false,
        ),
        parentTaskId: deserializeParam(
          data['parentTaskId'],
          ParamType.String,
          false,
        ),
        sectionId: deserializeParam(
          data['sectionId'],
          ParamType.int,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        projectId: deserializeParam(
          data['projectId'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        projects: deserializeStructParam(
          data['projects'],
          ParamType.DataStruct,
          false,
          structBuilder: ProjectsStruct.fromSerializableMap,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        consumedHours: deserializeParam(
          data['consumedHours'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TestTaskModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestTaskModelStruct &&
        id == other.id &&
        taskName == other.taskName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        description == other.description &&
        status == other.status &&
        plannedHours == other.plannedHours &&
        taskType == other.taskType &&
        parentTaskId == other.parentTaskId &&
        sectionId == other.sectionId &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        projectId == other.projectId &&
        userId == other.userId &&
        projects == other.projects &&
        user == other.user &&
        consumedHours == other.consumedHours;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        taskName,
        startDate,
        endDate,
        description,
        status,
        plannedHours,
        taskType,
        parentTaskId,
        sectionId,
        createdBy,
        createdAt,
        updatedAt,
        projectId,
        userId,
        projects,
        user,
        consumedHours
      ]);
}

TestTaskModelStruct createTestTaskModelStruct({
  int? id,
  String? taskName,
  String? startDate,
  String? endDate,
  String? description,
  String? status,
  int? plannedHours,
  String? taskType,
  String? parentTaskId,
  int? sectionId,
  int? createdBy,
  String? createdAt,
  String? updatedAt,
  int? projectId,
  int? userId,
  ProjectsStruct? projects,
  UserStruct? user,
  int? consumedHours,
}) =>
    TestTaskModelStruct(
      id: id,
      taskName: taskName,
      startDate: startDate,
      endDate: endDate,
      description: description,
      status: status,
      plannedHours: plannedHours,
      taskType: taskType,
      parentTaskId: parentTaskId,
      sectionId: sectionId,
      createdBy: createdBy,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectId: projectId,
      userId: userId,
      projects: projects ?? ProjectsStruct(),
      user: user ?? UserStruct(),
      consumedHours: consumedHours,
    );
