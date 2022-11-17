import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_mobile/widgets/row_space.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Register();
  }
}

class Register extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  int sex = 1;
  var isSubscript = false;
  var ageRange = 1;
  var provinces = [
    Province(code: "-", label: "Please select province"),
    Province(code: "01", label: "Bangkok"),
    Province(code: "02", label: "Phitsanulok"),
    Province(code: "03", label: "Nonthaburi")
  ];
  var province = "-";
  var dobControler = TextEditingController();

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              emailInput(),
              const RowSpace(),
              sexInput(),
              const RowSpace(),
              dobInput(),
              const RowSpace(),
              ageInput(),
              const RowSpace(),
              provinceInput(),
              const RowSpace(),
              passwordInput(),
              const RowSpace(),
              confirmPasswordInput(),
              const RowSpace(),
              subscriptInput(),
              registerBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget dobInput() {
    // return ElevatedButton(
    //     onPressed: () async {
    //       var now = DateTime.now();
    //       var result = await showDatePicker(
    //         context: context,
    //         initialDate: now,
    //         firstDate: now,
    //         lastDate: DateTime(now.year + 10),
    //       );
    //     },
    //     child: Text("DOB"));
    return TextFormField(
      controller: dobControler,
      decoration: InputDecoration(
          label: Text("DOB"),
          suffix: IconButton(
            icon: Icon(Icons.calendar_month),
            onPressed: () async {
              var now = DateTime.now();
              var result = await showDatePicker(
                context: context,
                initialDate: now,
                firstDate: now,
                lastDate: DateTime(now.year + 10),
              );
              dobControler.text = result.toString();
            },
          )),
    );
  }

  Widget provinceInput() {
    return DropdownButtonFormField<String>(
      value: province,
      onChanged: (value) {
        setState(() {
          province = value ?? "";
        });
      },
      items: provinces
          .map(
            (e) => DropdownMenuItem(
              value: e.code,
              child: Text(e.label),
            ),
          )
          .toList(),
      validator: (value) {
        if (value == "-") {
          return "please select province";
        }
      },
    );
  }

  Widget ageInput() {
    return DropdownButtonFormField(
      items: const [
        DropdownMenuItem(value: 1, child: Text("1-10")),
        DropdownMenuItem(value: 2, child: Text("11-20")),
      ],
      value: ageRange,
      onChanged: (value) {
        setState(() {
          ageRange = value ?? 1;
        });
      },
    );
  }

  Widget subscriptInput() {
    return Row(
      children: [
        Checkbox(
            value: isSubscript,
            onChanged: (value) {
              setState(() {
                isSubscript = value ?? false;
              });
            }),
        const Text("Subscript new feed?")
      ],
    );
  }

  Widget sexInput() {
    return Row(
      children: [
        Radio(
            value: 1,
            groupValue: sex,
            onChanged: ((value) {
              setState(() {
                sex = value ?? 0;
              });
            })),
        const Text("Male"),
        Radio(
            value: 2,
            groupValue: sex,
            onChanged: (value) {
              setState(() {
                sex = value ?? 0;
              });
            }),
        const Text("Female"),
      ],
    );
  }

  TextFormField confirmPasswordInput() {
    return TextFormField(
      decoration: const InputDecoration(
          label: Text("Confirm Password"), prefixIcon: Icon(Icons.lock)),
      obscureText: true,
      validator: ((value) {
        if (value!.isEmpty) {
          return "Please input confirm password.";
        }
        if (value.length < 5) {
          return "Password must be > 5 ";
        }
      }),
    );
  }

  TextFormField passwordInput() {
    return TextFormField(
      decoration: const InputDecoration(
          label: Text("Password"), prefixIcon: Icon(Icons.lock)),
      obscureText: true,
      validator: ((value) {
        if (value!.isEmpty) {
          return "Please input password.";
        }
        if (value.length < 5) {
          return "Password must be > 5 ";
        }
      }),
    );
  }

  TextFormField emailInput() {
    return TextFormField(
      decoration: const InputDecoration(
          label: Text("Email"), prefixIcon: Icon(Icons.email)),
      validator: ((value) {
        if (value!.isEmpty) {
          return "Please input Email.";
        }
      }),
      keyboardType: TextInputType.emailAddress,
    );
  }

  ElevatedButton registerBtn() {
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {}
        },
        child: const Text("Register"));
  }
}

//Model
class Province {
  final String code;
  final String label;
  Province({required this.code, required this.label});
}
