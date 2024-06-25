import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_drawer_component/custom_drawer_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_task_screen_widget.dart' show MyTaskScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTaskScreenModel extends FlutterFlowModel<MyTaskScreenWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  List<TestTaskModelStruct> myTaskList = [];
  void addToMyTaskList(TestTaskModelStruct item) => myTaskList.add(item);
  void removeFromMyTaskList(TestTaskModelStruct item) =>
      myTaskList.remove(item);
  void removeAtIndexFromMyTaskList(int index) => myTaskList.removeAt(index);
  void insertAtIndexInMyTaskList(int index, TestTaskModelStruct item) =>
      myTaskList.insert(index, item);
  void updateMyTaskListAtIndex(
          int index, Function(TestTaskModelStruct) updateFn) =>
      myTaskList[index] = updateFn(myTaskList[index]);

  List<String> projectNameList = [];
  void addToProjectNameList(String item) => projectNameList.add(item);
  void removeFromProjectNameList(String item) => projectNameList.remove(item);
  void removeAtIndexFromProjectNameList(int index) =>
      projectNameList.removeAt(index);
  void insertAtIndexInProjectNameList(int index, String item) =>
      projectNameList.insert(index, item);
  void updateProjectNameListAtIndex(int index, Function(String) updateFn) =>
      projectNameList[index] = updateFn(projectNameList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ProjectListDropDown widget.
  String? projectListDropDownValue;
  FormFieldController<String>? projectListDropDownValueController;
  // Model for customDrawerComponent component.
  late CustomDrawerComponentModel customDrawerComponentModel;

  @override
  void initState(BuildContext context) {
    customDrawerComponentModel =
        createModel(context, () => CustomDrawerComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customDrawerComponentModel.dispose();
  }

  /// Action blocks.
  Future fetchMyTask(BuildContext context) async {
    ApiCallResponse? myTaskApiResult;

    myTaskApiResult = await FetchMyTasksCall.call(
      authToken: FFAppState().userToken,
      pageNumber: 0,
      pageSize: 10,
      order: 'asc',
      orderBy: 'taskName',
    );

    if ((myTaskApiResult.succeeded ?? true)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'true',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
      myTaskList = FetchMyTasksCall.myTasks(
        (myTaskApiResult.jsonBody ?? ''),
      )!
          .map((e) => TestTaskModelStruct.maybeFromMap(e))
          .withoutNulls
          .toList()
          .toList()
          .cast<TestTaskModelStruct>();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (myTaskApiResult.jsonBody ?? ''),
              r'''$.message''',
            ).toString().toString(),
            style: GoogleFonts.getFont(
              'Roboto',
              color: FlutterFlowTheme.of(context).secondaryBackground,
              fontWeight: FontWeight.normal,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error1,
        ),
      );
    }
  }
}
