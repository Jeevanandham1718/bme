import 'package:bme/UserFields.dart';
import "package:flutter/material.dart";

import 'Button.dart';
import 'upi.dart';

class GlucosePredictionPage extends StatefulWidget {
  const GlucosePredictionPage({super.key});

  @override
  State<GlucosePredictionPage> createState() => _GlucosePredictionPageState();
}

class _GlucosePredictionPageState extends State<GlucosePredictionPage> {
  late TextEditingController preg;
  late TextEditingController gv;
  late TextEditingController blood;
  late TextEditingController skin;
  late TextEditingController insulin;
  late TextEditingController bmi;
  late TextEditingController dia;
  late TextEditingController age;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
  }

  void initUser() {
    preg = TextEditingController();
    gv = TextEditingController();
    blood = TextEditingController();
    skin = TextEditingController();
    insulin = TextEditingController();
    bmi = TextEditingController();
    dia = TextEditingController();
    age = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(226, 224, 233, 1),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 70, 13, 224),
          centerTitle: true,
          title: Text(
            "COMFORTABLE CARE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: preg,
                      decoration: InputDecoration(
                          labelText: "Number of pregnancies",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: gv,
                      decoration: InputDecoration(
                          labelText: "Glucose Value",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: blood,
                      decoration: InputDecoration(
                          labelText: "Blood Pressure",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: skin,
                      decoration: InputDecoration(
                          labelText: "Skin Thickness",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: insulin,
                      decoration: InputDecoration(
                          labelText: "Insulin",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: bmi,
                      decoration: InputDecoration(
                          labelText: "BMI",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: dia,
                      decoration: InputDecoration(
                          labelText: "Diabetes Pedigree",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter valid data';
                        }
                        return null;
                      },
                      controller: age,
                      decoration: InputDecoration(
                          labelText: "Age",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 70, 13, 224)),
                          border: UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 70, 13, 224)))),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                      text: 'Enter',
                      onClicked: () async {
                        if (_formKey.currentState!.validate()) {}
                        final users = User(
                            numberofpregnancies: preg.text,
                            glucosevalue: gv.text,
                            bloodpressure: blood.text,
                            skinthickness: skin.text,
                            insulin: insulin.text,
                            bmi: bmi.text,
                            diabetespedigrees: dia.text,
                            age: age.text);
                        await Upi.insert([users.toJson()]);
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
    // Future insertUsers() async {
    //   final users = [
    //     User(
    //         numberofpregnancies: '10',
    //         glucosevalue: 'j',
    //         bloodpressure: 'hh',
    //         skinthickness: 'kk',
    //         insulin: 'll',
    //         bmi: '10',
    //         diabetespedigrees: 'kk',
    //         age: '50'),
    //     User(
    //         numberofpregnancies: '10',
    //         glucosevalue: 'j',
    //         bloodpressure: 'hh',
    //         skinthickness: 'kk',
    //         insulin: 'll',
    //         bmi: '10',
    //         diabetespedigrees: 'kk',
    //         age: '50')
    //   ];
    //   final jsonUsers = users.map((user) => user.toJson()).toList();
    //   await Upi.insert(jsonUsers);
    // }
  }
}
