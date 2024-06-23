import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_project_dialog_widget.dart' show AddProjectDialogWidget;
import 'package:flutter/material.dart';

class AddProjectDialogModel extends FlutterFlowModel<AddProjectDialogWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ProjectNameTextField widget.
  FocusNode? projectNameTextFieldFocusNode;
  TextEditingController? projectNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      projectNameTextFieldTextControllerValidator;
  String? _projectNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please provide a project name';
    }

    if (val.length < 2) {
      return 'Please enter a project name with at least 2 characters';
    }
    if (val.length > 60) {
      return 'Please enter a project name with no more than 60 characters';
    }

    return null;
  }

  // State field(s) for ClientDropDown widget.
  String? clientDropDownValue;
  FormFieldController<String>? clientDropDownValueController;
  // State field(s) for ProjectHoursTextField widget.
  FocusNode? projectHoursTextFieldFocusNode;
  TextEditingController? projectHoursTextFieldTextController;
  String? Function(BuildContext, String?)?
      projectHoursTextFieldTextControllerValidator;
  String? _projectHoursTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please provide project budget hours';
    }

    return null;
  }

  // State field(s) for ExcessHourCheckboxListTile widget.
  bool? excessHourCheckboxListTileValue;
  // State field(s) for ManualEntryCheckboxListTile widget.
  bool? manualEntryCheckboxListTileValue;

  @override
  void initState(BuildContext context) {
    projectNameTextFieldTextControllerValidator =
        _projectNameTextFieldTextControllerValidator;
    projectHoursTextFieldTextControllerValidator =
        _projectHoursTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    projectNameTextFieldFocusNode?.dispose();
    projectNameTextFieldTextController?.dispose();

    projectHoursTextFieldFocusNode?.dispose();
    projectHoursTextFieldTextController?.dispose();
  }
}
