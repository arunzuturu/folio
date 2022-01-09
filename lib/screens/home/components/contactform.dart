import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String projectType = '';
  String projectBudget = '';
  String description = '';

  Widget buildName() => SizedBox(
        width: 470,
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Your Name",
            hintText: "Enter Your Name",
          ),
          //maxLength: 30,
          onSaved: (value) => setState(() => name = value!),
        ),
      );
  Widget buildEmail() => SizedBox(
        width: 470,
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          onChanged: (value) {},
          decoration: InputDecoration(
            suffixStyle: TextStyle(color: Colors.white),
            prefixStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Email Address",
            hintText: "Enter your email address",
          ),
          keyboardType: TextInputType.emailAddress,
          onSaved: (value) => setState(() => email = value!),
        ),
      );
  Widget buildProjectType() => SizedBox(
        width: 470,
        child: TextFormField(
            style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Project Type",
            hintText: "Select Project Type",
          ),
          onSaved: (value) => setState(() => projectType = value!),
        ),
      );
  Widget buildProjectBudget() => SizedBox(
        width: 470,
        child: TextFormField(
            style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Project Budget",
            hintText: "Select Project Budget",
          ),
          onSaved: (value) => setState(() => projectBudget = value!),
        ),
      );
  Widget buildDescription() => SizedBox(
        // height: 300,
        // TextField by default cover the height, i tryed to fix this problem but i cant
        child: TextFormField(
            style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            labelText: "Description",
            hintText: "Write some description",
          ),
          onSaved: (value) => setState(() => description = value!),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 18, 0, 10),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Wrap(
            spacing: 2.5,
            runSpacing: 1.5,
            children: [
              buildName(),
              buildEmail(),
              buildProjectType(),
              buildProjectBudget(),
              buildDescription(),
              SizedBox(height: 20),
              Center(
                child: FittedBox(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    final isValid = formKey.currentState?.validate();
                    if (isValid != null) {
                      formKey.currentState?.save();
                      final message =
                          'Username: $name\ndescription: $description\nEmail: $email';
                      print(message);

                      final snackBar = SnackBar(
                        content: Text(
                          "Sent!, Thanks for contacting",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.black,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text(
                    "Contact Me",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
