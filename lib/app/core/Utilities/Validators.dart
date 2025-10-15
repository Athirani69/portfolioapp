class Validators {
  static String? mobilenumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Number is required';
    }
    final isValid = RegExp(r'^\d+$').hasMatch(value);
    if (!isValid) {
      return 'Enter a valid number';
    }
    return null;
  }

  static bool isNumeric(String value) {
    if (value.isEmpty) {
      return false;
    }
    final numericRegex = RegExp(r'^[0-9]+$');
    return numericRegex.hasMatch(value);
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }
}
