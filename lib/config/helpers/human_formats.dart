import 'package:intl/intl.dart';

class HumanFormats {

  //Permite acceder al metodo sin crear una instancia
  static String humanReadbleNumber(double number){
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);


  }
}