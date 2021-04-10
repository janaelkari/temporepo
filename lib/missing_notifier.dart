import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_appretry/missing.dart';
class Notifier with ChangeNotifier{
  List<missing> _missingList = [];
  missing _currentmissing; //COMMENT
  UnmodifiableListView <missing> get missingList => UnmodifiableListView(_missingList);
  missing get currentFood => _currentmissing; //COMMENT

  set missingList(List<missing> missingList) { //new list
    _missingList = missingList;
    notifyListeners();
  }

  set currentmissing(missing missingg) { //updating the list
    _currentmissing = missingg;
    notifyListeners();
  }
}