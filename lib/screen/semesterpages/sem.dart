import 'package:flutter/material.dart';

class Sem extends StatefulWidget {
  const Sem({Key? key}) : super(key: key);

  @override
  State<Sem> createState() => _SemState();
}

class _SemState extends State<Sem> {
  var _idContainer = TextEditingController();
  var _semesterContainer = TextEditingController();
  var _gradeContainer = TextEditingController();
  var _searchContainer = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grade Recording')),
      body: SafeArea(
        child: Form(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextFormField(
                  controller: _idContainer,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter id to update';
                    }
                    if (value.split(" ").length == 1) {
                      return 'Enter your id';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter your id', border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextFormField(
                  controller: _semesterContainer,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your Semester';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Semester',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextFormField(
                  controller: _gradeContainer,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your Grade';
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Grade',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        addGrade();
                      },
                      child: const Text('add')),
                  OutlinedButton(
                      onPressed: () {
                        updateGrade();
                      },
                      child: const Text('Update')),
                  OutlinedButton(
                      onPressed: () {
                        deleteGrade();
                      },
                      child: const Text('Delete')),
                  OutlinedButton(
                      onPressed: () {
                        searchGrade();
                      },
                      child: const Text('Search')),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  void addGrade() {
    String sem = _semesterContainer.text;
    String grade = _gradeContainer.text;

  }

  void updateGrade() {}

  void deleteGrade() {}

  void searchGrade() {}
}
