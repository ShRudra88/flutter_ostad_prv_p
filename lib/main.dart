import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Form App',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final ValueNotifier<bool> autovalidate = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Form App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: FormBuilder(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: <Widget>[
              FormBuilderTextField(
                name: 'name',
                decoration: InputDecoration(labelText: 'Name'),
                validator: FormBuilderValidators.required(context),
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(labelText: 'Email'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context),
                ]),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.saveAndValidate()) {
                    final formData = _formKey.currentState!.value;
                    // Handle the form data (e.g., submit it to a server)
                    print(formData);
                  } else {
                    autovalidate.value = true;
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    autovalidate.dispose();
    super.dispose();
  }
}
