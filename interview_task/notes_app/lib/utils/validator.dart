class Validator {
  static String? validateString(String? name) {
    if (name == null) {
      return null;
    }
    if (name.isEmpty) {
      return 'Name can\'t be empty';
    }
    return null;
  }
}
