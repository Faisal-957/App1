// ignore: file_names
import 'package:mvvm/core/view_model/base_view_model.dart';

class SelectIntrestViewmodel extends BaseViewModel {
  List<String> intrest = [
    "Purchasing a Home",
    "Real Estate",
    "Stocks",
    "Selling a Home",
    "Investment Property",
    "Debt",
    "Credit",
    "Insurance",
    "Loans",
    "Budgeting",
    "Mortgages",
    "Taxes",
    "Starting your own business",
    "Credit Cards",
  ];
  List<String> selectedInterests = [];

  void onClick(int index) {
    String interest = intrest[index];

    if (selectedInterests.contains(interest)) {
      // remove if already selected
      selectedInterests.remove(interest);
    } else {
      // add new selection at the beginning
      selectedInterests.insert(0, interest);
    }
    notifyListeners();
  }

  bool isSelected(String interest) {
    return selectedInterests.contains(interest);
  }

  // merged list = selected first + remaining
  List<String> get orderedInterests {
    final remaining = intrest.where((e) => !selectedInterests.contains(e));
    return [...selectedInterests, ...remaining];
  }
}
