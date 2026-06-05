import 'package:flutter/material.dart';

enum VoucherStatus { idle, loading, valid, invalid }

class VoucherViewModel extends ChangeNotifier {
  VoucherStatus status = VoucherStatus.idle;

  void toggle() {
    switch (status) {
      case VoucherStatus.idle:
        status = VoucherStatus.invalid;
        break;
      case VoucherStatus.invalid:
        status = VoucherStatus.valid;
        break;
      case VoucherStatus.valid:
        status = VoucherStatus.idle;
        break;

      default:
    }
    notifyListeners();
  }

  void reset(String value) {
    status = VoucherStatus.idle;
    notifyListeners();
  }

  VoucherViewModel();
}
