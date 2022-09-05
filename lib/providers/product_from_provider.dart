import 'package:flutter/material.dart';

import 'package:fl_productos/models/product.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Product product;

  ProductFormProvider(this.product);

  updateVailability(bool value) {
    product.available = value;
    notifyListeners();
  }

  bool isValidForm() {
    print(product.name);

    return formKey.currentState?.validate() ?? false;
  }
}
