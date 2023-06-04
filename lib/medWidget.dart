// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'model.dart';

class MedicationPage extends StatefulWidget {
  MedicationModel medicationModel;
  MedicationPage({
    Key? key,
    required this.medicationModel,
  }) : super(key: key);

  @override
  State<MedicationPage> createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> {
  @override
  Widget build(BuildContext context) {
    return Material (
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 16, right: 16),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '  ${widget.medicationModel.name}',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '${'description'.toUpperCase()}: ${widget.medicationModel.description}',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '${'LABORATOIRES'}: ${widget.medicationModel.LABORATOIRESDETENTEURDELADECISIONDENREGISTREMENT.toUpperCase()}',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '${'toxicity'}: ${widget.medicationModel.toxicity.toUpperCase()}',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'indication: ${widget.medicationModel.indication}',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ]),
        ),
      ),
    );
  }
}
