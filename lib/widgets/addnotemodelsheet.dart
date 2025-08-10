import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Custom_textfeild.dart';
import 'package:noteapp/widgets/Custom_botton.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextFeild(
            tittle: "Tittle",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextFeild(
            tittle: "Content",
            maxlines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 40),
          Custombutton(
            text: "Add",
            ontap: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
