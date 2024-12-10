import 'package:flutter/material.dart';
import 'CoursePage.dart';

class home_pg extends StatefulWidget {
  home_pg({super.key});

  @override
  State<home_pg> createState() => _home_pgState();
}

class _home_pgState extends State<home_pg> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final LinearGradient gradient = LinearGradient(
    colors: [Colors.blue, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  double gpa = 0.0;
  String semester = "0";
  String name = "Your Name";
  int creditHour = 0;
  List<Map<String, dynamic>> courses = [];

  @override
  void dispose() {
    nameController.dispose();
    semesterController.dispose();
    super.dispose();
  }

  void calculateGPA() {
    double totalPoints = 0.0;
    int totalCredits = 0;
    for (var course in courses) {
      totalCredits += course['credit'];
      totalPoints += course['credit'] * course['grade'];
    }
    setState(() {
      gpa = totalCredits > 0 ? totalPoints / totalCredits : 0.0;
      creditHour = totalCredits;
    });
  }

  void addCourse(String name, int credit, double grade) {
    setState(() {
      courses.add({'name': name, 'credit': credit, 'grade': grade});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _Ui(),
    );
  }

  Widget _Ui() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Gradient(),
          SizedBox(height: 7,),
          Courses_(),
          ...courses.map((course) => CourseCard(course: course)),
          Button_(),
          CalculateButton(),
        ],
      ),
    );
  }

  Widget Gradient() {
    return Container(
      height: 230,
      width: 400,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
      ),
      child: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            content: Container(
                              height: 130,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      labelText: "Name",
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter Your Name:",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      elevation: 10,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        name = nameController.text;
                                      });
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            content: Container(
                              height: 130,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: semesterController,
                                    decoration: InputDecoration(
                                      labelText: "Semester",
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      hintText: "Enter Semester:",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      elevation: 10,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        semester = semesterController.text;
                                      });
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Semester: $semester",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  creditHour.toString(),
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                Text(
                  gpa.toStringAsFixed(2),
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 42, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Credit Hr",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  "GPA",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Courses_() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            "Course Name",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 52,),
          Text(
            "Credit Hr",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 45,),
          Text(
            "Grades",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget Button_() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton.extended(
          onPressed: () async {
            final result = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AddCourseDialog();
              },
            );
            if (result != null) {
              addCourse(result['name'], result['credit'], result['grade']);
            }
          },
          backgroundColor: Colors.green,
          label: Text(
            "Add Courses",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          icon: Icon(Icons.add, color: Colors.white,),
        ),
      ),
    );
  }

  Widget CalculateButton() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
          onPressed: calculateGPA,
          style: ElevatedButton.styleFrom(
           
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          ),
          child: Text(
            "Calculate GPA",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget CourseCard({required Map<String, dynamic> course}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 150,
            child: Text(course['name']),
          ),
          SizedBox(width: 10),
          Container(
            width: 100,
            child: Text(course['credit'].toString()),
          ),
          SizedBox(width: 10),
          Container(
            width: 90,
            child: Text(course['grade'].toString()),
          ),
        ],
      ),
    );
  }
}

class AddCourseDialog extends StatefulWidget {
  @override
  _AddCourseDialogState createState() => _AddCourseDialogState();
}

class _AddCourseDialogState extends State<AddCourseDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController creditController = TextEditingController();
  String selectedGrade = 'A';

  List<String> gradeOptions = [
    'A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'F'
  ];

  double gradeToPoints(String grade) {
    switch (grade) {
      case 'A+':
        return 4.0;
      case 'A':
        return 4.0;
      case 'A-':
        return 3.7;
      case 'B+':
        return 3.3;
      case 'B':
        return 3.0;
      case 'B-':
        return 2.7;
      case 'C+':
        return 2.3;
      case 'C':
        return 2.0;
      case 'C-':
        return 1.7;
      case 'D+':
        return 1.3;
      case 'D':
        return 1.0;
      case 'D-':
        return 0.7;
      case 'F':
        return 0.0;
      default:
        return 0.0;
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    creditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 250,
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Course Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: creditController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Credit Hours",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedGrade,
              onChanged: (String? newValue) {
                setState(() {
                  selectedGrade = newValue!;
                });
              },
              items: gradeOptions.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop({
                  'name': nameController.text,
                  'credit': int.parse(creditController.text),
                  'grade': gradeToPoints(selectedGrade),
                });
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}

