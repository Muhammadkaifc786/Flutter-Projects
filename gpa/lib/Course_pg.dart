import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController creditController = TextEditingController();
  String selectedGrade = 'A';

  List<String> gradeOptions = [
    'A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'F'
  ];

  @override
  void dispose() {
    nameController.dispose();
    creditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color borderColor = Colors.black;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Course Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    controller: creditController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Credit hr",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  dropdownColor: Colors.white,
                  value: selectedGrade,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 20,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  underline: Container(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedGrade = newValue;
                      });
                    }
