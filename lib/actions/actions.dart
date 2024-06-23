import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future fetchClientData(BuildContext context) async {
  ApiCallResponse? fetchClientApiResult;

  fetchClientApiResult = await FetchClientsCall.call(
    authToken: FFAppState().userToken,
  );

  if ((fetchClientApiResult.succeeded ?? true)) {
    FFAppState().clientData = FetchClientsCall.clientData(
      (fetchClientApiResult.jsonBody ?? ''),
    )!
        .map((e) => ClientsModelStruct.maybeFromMap(e))
        .withoutNulls
        .toList()
        .toList()
        .cast<ClientsModelStruct>();
    FFAppState().update(() {});
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'false',
          style: TextStyle(),
        ),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  }
}
