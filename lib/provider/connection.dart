import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

class Connection extends ChangeNotifier {
  bool neTisOn = true;

  StreamController<ConnectivityResult> netWorkStatus =
      StreamController<ConnectivityResult>();

  Connection() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      netWorkStatus.add(result);

      setNetWork(result);
    });

    notifyListeners();
  }

  setNetWork(ConnectivityResult value) {
    if (value == ConnectivityResult.none) {
      neTisOn = false;
    } else {
      neTisOn = true;
    }
    notifyListeners();
  }
}
