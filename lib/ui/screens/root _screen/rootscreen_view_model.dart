import 'package:mvvm/core/view_model/base_view_model.dart';

class RootScreenViewModel extends BaseViewModel {
  int selectedIndex = 0;

  void onClick(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
