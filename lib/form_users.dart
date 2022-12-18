import 'package:flutter/material.dart';

// Create a Form widget.
class FormUser extends StatefulWidget {

  FormUser({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FormUser();

  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class _FormUser extends State<FormUser> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitud Asistencia Medica"),
        backgroundColor: Color(0xFF4268D3),
      ),
      body:  Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.only(
              top: 40.0,
              left: 10.0,
              right: 20.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Tu nombre completo',
                  labelText: 'Nombre completo *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.numbers),
                  hintText: 'Cedula solo numeros',
                  labelText: '12.234.567 *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su cedula';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.location_city),
                  hintText: 'Parroquia',
                  labelText: 'San Cristobal *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su parroquia';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.alternate_email),
                  hintText: 'Email',
                  labelText: 'pepito@gmail.com *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.local_hospital),
                  hintText: 'Enfermedad',
                  labelText: 'Enfermedad Dengue *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su enfermedad';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.date_range),
                  hintText: 'Fecha Contagio',
                  labelText: 'Fecha: 18/11/2022 *',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su fecha contagio';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 40.0,
                    left: 40.0
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  ),
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Solicitar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}