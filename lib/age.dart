class AgeCalculator {
  static int? age;
  AgeCalculator(int p) {
    // ignore: avoid_print
    //print('Enter Your Birth Year:');
    int birthYear = p;
    // ignore: unused_local_variable
    age = DateTime.now().year - birthYear;
    // ignore: avoid_print
    //print('Your Age is $age Years Old');
  }
}
