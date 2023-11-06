// ignore: file_names
class UserFields {
  static final String id = 'id';
  static final String numberofpregnancies = 'umberofpregnancies';
  static final String glucosevalue = 'glucosevalue';
  static final String bloodpressure = 'bloodpressure';
  static final String skinthickness = 'skinthickness';
  static final String insulin = 'insulin';
  static final String bmi = 'bmi';
  static final String diabetespedigrees = 'diabetesprdigrees';
  static final String age = 'age';

  static List<String> getfields() => [
        id,
        numberofpregnancies,
        glucosevalue,
        bloodpressure,
        skinthickness,
        insulin,
        bmi,
        diabetespedigrees,
        age
      ];
}

class User {
  final int? id;
  final String numberofpregnancies;
  final String glucosevalue;
  final String bloodpressure;
  final String skinthickness;
  final String insulin;
  final String bmi;
  final String diabetespedigrees;
  final String age;
  const User({
    this.id,
    required this.numberofpregnancies,
    required this.glucosevalue,
    required this.bloodpressure,
    required this.skinthickness,
    required this.insulin,
    required this.bmi,
    required this.diabetespedigrees,
    required this.age,
  });

  Map<String, dynamic> toJson() => {
        UserFields.id: id,
        UserFields.numberofpregnancies: numberofpregnancies,
        UserFields.glucosevalue: glucosevalue,
        UserFields.bloodpressure: bloodpressure,
        UserFields.skinthickness: skinthickness,
        UserFields.insulin: insulin,
        UserFields.bmi: bmi,
        UserFields.diabetespedigrees: diabetespedigrees,
        UserFields.age: age,
      };
}
