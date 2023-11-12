import 'dart:math' as math;

mixin Helper {
  // Generate a random integer between min and max (inclusive)
  int randomInt(int min, int max) {
    final rng =  math.Random();
    return min + rng.nextInt(max - min + 1);
  }

  // Generate a random double between min and max (inclusive)
  double randomDouble(double min, double max) {
    final rng =  math.Random();
    return min + rng.nextDouble() * (max - min);
  }

  // Generate a random string of a given length
  String randomString(int length) {
    final rng =  math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(length, (index) => chars[rng.nextInt(chars.length)]).join();
  }

  // Generate a random string of a given length
  String randomStringWithSpaces(int length) {
    final rng =  math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789 ';
    return List.generate(length, (index) => chars[rng.nextInt(chars.length)]).join();
  }

  // Generate a random string of a given length
  String randomStringWithSpacesAndPunctuation(int length) {
    final rng =  math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789 .,!?';
    return List.generate(length, (index) => chars[rng.nextInt(chars.length)]).join();
  }

  // Generate a random string of a given length
  String randomStringWithSpacesAndPunctuationAndNewLines(int length) {
    final rng =  math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789 .,!?\\r\\n';
    return List.generate(length, (index) => chars[rng.nextInt(chars.length)]).join();
  }

  // Generate a random string of a given length
  String randomStringWithSpacesAndPunctuationAndNewLinesAndTabs(int length) {
    final rng =  math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789 .,!?\\r\\n\\t';
    return List.generate(length, (index) => chars[rng.nextInt(chars.length)]).join();
  }

  // Generate a random string of a given length
  String randomStringWithSpacesAndPunctuationAndNewLinesAndTabsAndSpecialCharacters(int length) {
    final rng =  math.Random();
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789 .,!?\\r\\n\\t~`!@#\$%^&*()_+-={}[]|:;<>?/';
    return List.generate(length, (index) => chars[rng.nextInt(chars.length)]).join();
  }

  // Convert a string to title case (i.e. capitalize the first letter of each word)
  String toTitleCase(String s) {
    return s.split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join(' ');
  }

  // Convert a string to sentence case (i.e. capitalize the first letter of the first word)
  String toSentenceCase(String s) {
    return s[0].toUpperCase() + s.substring(1);
  }

  // Convert a string to camel case (i.e. remove spaces and capitalize the first letter of each word)
  String toCamelCase(String s) {
    return s.split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join();
  }

  // Convert a string to snake case (i.e. replace spaces with underscores)
  String toSnakeCase(String s) {
    return s.replaceAll(' ', '_');
  }

  // Convert a string to kebab case (i.e. replace spaces with hyphens)
  String toKebabCase(String s) {
    return s.replaceAll(' ', '-');
  }

  // Convert a string to pascal case (i.e. remove spaces and capitalize the first letter of each word)
  String toPascalCase(String s) {
    return s.split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join();
  }

  // Convert a string to constant case (i.e. replace spaces with underscores and convert to uppercase)
  String toConstantCase(String s) {
    return s.replaceAll(' ', '_').toUpperCase();
  }

  // Convert a string to dot case (i.e. replace spaces with periods)
  String toDotCase(String s) {
    return s.replaceAll(' ', '.');
  }

  // Convert a string to path case (i.e. replace spaces with forward slashes)
  String toPathCase(String s) {
    return s.replaceAll(' ', '/');
  }

  // Convert a string to header case (i.e. replace spaces with hyphens and convert to lowercase)
  String toHeaderCase(String s) {
    return s.replaceAll(' ', '-').toLowerCase();
  }

  // Convert a string to no case (i.e. remove spaces)
  String toNoCase(String s) {
    return s.replaceAll(' ', '');
  }

  // Convert a string to param case (i.e. replace spaces with hyphens and convert to lowercase)
  String toParamCase(String s) {
    return s.replaceAll(' ', '-').toLowerCase();
  }

  // Check if a string contains only alphanumeric characters
  bool isAlphanumeric(String s) {
    return s.contains(RegExp(r"^[a-zA-Z\d]+$"));
  }

  // Check if a string contains only numeric characters
  bool isNumeric(String s) {
    return s.contains(RegExp(r"^\d+$"));
  }

  // Check if a string contains only alphabetic characters
  bool isAlphabetic(String s) {
    return s.contains(RegExp(r"^[a-zA-Z]+$"));
  }

  // Check if a string contains only alphabetic characters
  bool isAlphabeticWithSpaces(String s) {
    return s.contains(RegExp(r"^[a-zA-Z ]+$"));
  }

  // Check if a string contains only alphabetic characters
  bool isAlphabeticWithSpacesAndHyphens(String s) {
    return s.contains(RegExp(r"^[a-zA-Z -]+$"));
  }

  // Check if a string contains only alphabetic characters
  bool isAlphabeticWithSpacesAndHyphensAndApostrophes(String s) {
    return s.contains(RegExp(r"^[a-zA-Z '-]+$"));
  }

  // Check if a string contains only alphabetic characters
  bool isAlphabeticWithSpacesAndHyphensAndApostrophesAndCommas(String s) {
    return s.contains(RegExp(r"^[a-zA-Z ',]+$"));
  }

  // Check if a string contains only alphabetic characters
  bool isAlphabeticWithSpacesAndHyphensAndApostrophesAndCommasAndPeriods(String s) {
    return s.contains(RegExp(r"^[a-zA-Z ',.]+$"));
  }

  // Check if a string is a valid email address
  bool isValidEmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  // Check if a string is a valid phone number
  bool isValidPhoneNumber(String phoneNumber) {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(phoneNumber);
  }

  // Check if a string is a valid date
  bool isValidDate(String date) {
    return DateTime.tryParse(date) != null;
  }

  // Check if a number is within a given range
  bool isWithinRange(num value, num min, num max) {
    return value >= min && value <= max;
  }

  // Check if a string is a valid credit card number
  bool isValidCreditCardNumber(String creditCardNumber) {
    return RegExp(r'^\d{16}$').hasMatch(creditCardNumber);
  }

  // Check if a string is a valid credit card expiration date
  bool isValidCreditCardExpirationDate(String creditCardExpirationDate) {
    return RegExp(r'^\d{2}\/\d{2}$').hasMatch(creditCardExpirationDate);
  }

  // Check if a string is a valid credit card security code
  bool isValidCreditCardSecurityCode(String creditCardSecurityCode) {
    return RegExp(r'^\d{3}$').hasMatch(creditCardSecurityCode);
  }

  // Check if a string is a valid credit card expiration date
  bool isValidCreditCardExpirationDateAndSecurityCode(String creditCardExpirationDate, String creditCardSecurityCode) {
    return isValidCreditCardExpirationDate(creditCardExpirationDate) && isValidCreditCardSecurityCode(creditCardSecurityCode);
  }

  // Check if a string is a valid credit card number, expiration date, and security code
  bool isValidCreditCardNumberExpirationDateAndSecurityCode(String creditCardNumber, String creditCardExpirationDate, String creditCardSecurityCode) {
    return isValidCreditCardNumber(creditCardNumber) && isValidCreditCardExpirationDateAndSecurityCode(creditCardExpirationDate, creditCardSecurityCode);
  }

  // Check if a string is a valid social security number
  bool isValidSocialSecurityNumber(String socialSecurityNumber) {
    return RegExp(r'^\d{3}-\d{2}-\d{4}$').hasMatch(socialSecurityNumber);
  }

  // Check if a string is a valid US zip code
  bool isValidUsZipCode(String usZipCode) {
    return RegExp(r'^\d{5}(?:[-\s]\d{4})?$').hasMatch(usZipCode);
  }

  // Check if a string is a valid US state abbreviation
  bool isValidUsStateAbbreviation(String usStateAbbreviation) {
    return RegExp(r'^[A-Z]{2}$').hasMatch(usStateAbbreviation);
  }

  // Check if a string is a valid US state name
  bool isValidUsStateName(String usStateName) {
    return RegExp(r'^[A-Z][a-z]+(?:[ ]?[A-Z][a-z]+)*$').hasMatch(usStateName);
  }

  // Check if a string is a valid US phone number
  bool isValidUsPhoneNumber(String usPhoneNumber) {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(usPhoneNumber);
  }

  // Check if a string is a valid US phone number
  bool isValidUsPhoneNumberWithAreaCode(String usPhoneNumber) {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(usPhoneNumber);
  }

  // Check if a string is a valid US phone number
  bool isValidUsPhoneNumberWithAreaCodeAndExtension(String usPhoneNumber) {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(usPhoneNumber);
  }

  // Check if a string is a valid US phone number
  bool isValidUsPhoneNumberWithExtension(String usPhoneNumber) {
    return RegExp(r'^\+?[1-9]\d{1,14}$').hasMatch(usPhoneNumber);
  }

  // Check if a string is a valid US address
  bool isValidUsAddress(String usAddress) {
    return RegExp(r'^\d+ [A-z]+ [A-z]+(?: [A-z]+)*$').hasMatch(usAddress);
  }

  // Check if a string is a valid US address
  bool isValidUsAddressWithUnit(String usAddress) {
    return RegExp(r'^\d+ [A-z]+ [A-z]+(?: [A-z]+)*$').hasMatch(usAddress);
  }

  // Check if a string is a valid US address
  bool isValidUsAddressWithUnitAndCity(String usAddress) {
    return RegExp(r'^\d+ [A-z]+ [A-z]+(?: [A-z]+)*$').hasMatch(usAddress);
  }

  // Check if a string is a valid US address
  bool isValidUsAddressWithUnitAndCityAndState(String usAddress) {
    return RegExp(r'^\d+ [A-z]+ [A-z]+(?: [A-z]+)*$').hasMatch(usAddress);
  }

  // Check if a string is a valid URL
  bool isValidUrl(String url) {
    return Uri.tryParse(url)?.isAbsolute ?? false;
  }

  // Check if a string is a valid URL
  bool isValidUrlWithProtocol(String url) {
    return Uri.tryParse(url)?.isAbsolute ?? false;
  }

  // Check if a string is a valid URL
  bool isValidUrlWithProtocolAndDomain(String url) {
    return Uri.tryParse(url)?.isAbsolute ?? false;
  }

  // Check if a string is a valid URL
  bool isValidUrlWithProtocolAndDomainAndPath(String url) {
    return Uri.tryParse(url)?.isAbsolute ?? false;
  }

  // Check if a string is a valid URL
  bool isValidUrlWithProtocolAndDomainAndPathAndQuery(String url) {
    return Uri.tryParse(url)?.isAbsolute ?? false;
  }

  void logError(String message, {String name = 'ERROR'}) {
    log('ERROR: $message', name: name);
  }

  void logWarning(String message, {String name = 'WARNING'}) {
    log('WARNING: $message', name: name);
  }

  void logInfo(String message, {String name = 'INFO'}) {
    log('INFO: $message', name: name);
  }

  void logDebug(String message, {String name = 'DEBUG'}) {
    log('DEBUG: $message', name: name);
  }

  void log(String message, {String name = 'LOG'}) {
    log('$name: $message');
  }

  void logErrorAndThrow(String message, {String name = 'ERROR'}) {
    logError(message, name: name);
    throw Exception(message);
  }

  void logWarningAndThrow(String message, {String name = 'WARNING'}) {
    logWarning(message, name: name);
    throw Exception(message);
  }

  void logInfoAndThrow(String message, {String name = 'INFO'}) {
    logInfo(message, name: name);
    throw Exception(message);
  }

  void logDebugAndThrow(String message, {String name = 'DEBUG'}) {
    logDebug(message, name: name);
    throw Exception(message);
  }

  void logAndThrow(String message, {String name = 'LOG'}) {
    log(message, name: name);
    throw Exception(message);
  }

  void logErrorAndReturn(String message, {String name = 'ERROR'}) {
    logError(message, name: name);
    return;
  }

  void logWarningAndReturn(String message, {String name = 'WARNING'}) {
    logWarning(message, name: name);
    return;
  }

  void logInfoAndReturn(String message, {String name = 'INFO'}) {
    logInfo(message, name: name);
    return;
  }

  void logDebugAndReturn(String message, {String name = 'DEBUG'}) {
    logDebug(message, name: name);
    return;
  }
}