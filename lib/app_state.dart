import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userToken = prefs.getString('ff_userToken') ?? _userToken;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user =
              UserModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userToken = '';
  String get userToken => _userToken;
  set userToken(String value) {
    _userToken = value;
    prefs.setString('ff_userToken', value);
  }

  List<ClientsModelStruct> _clientData = [];
  List<ClientsModelStruct> get clientData => _clientData;
  set clientData(List<ClientsModelStruct> value) {
    _clientData = value;
  }

  void addToClientData(ClientsModelStruct value) {
    clientData.add(value);
  }

  void removeFromClientData(ClientsModelStruct value) {
    clientData.remove(value);
  }

  void removeAtIndexFromClientData(int index) {
    clientData.removeAt(index);
  }

  void updateClientDataAtIndex(
    int index,
    ClientsModelStruct Function(ClientsModelStruct) updateFn,
  ) {
    clientData[index] = updateFn(_clientData[index]);
  }

  void insertAtIndexInClientData(int index, ClientsModelStruct value) {
    clientData.insert(index, value);
  }

  UserModelStruct _user = UserModelStruct.fromSerializableMap(
      jsonDecode('{\"permissions\":\"[]\"}'));
  UserModelStruct get user => _user;
  set user(UserModelStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(UserModelStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
