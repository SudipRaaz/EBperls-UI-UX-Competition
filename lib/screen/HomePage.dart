import 'package:flutter/material.dart';
import 'package:itmeet/screen/forgot.dart';
import 'package:itmeet/screen/homee.dart';
import 'package:itmeet/screen/pagelayout.dart';
import 'package:itmeet/screen/term.dart';

// sign IN page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _value;

  var _text;

  var _isObscure = true;

  var _check = false;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          SizedBox(
            height: 40,
          ),

          // email and passsword arae

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              // height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: Colors.amber,
                  border: Border.all(width: 3, color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            // errorText: 'Email can not be null',
                            fillColor: Colors.blue.shade100,
                            filled: true,
                            label: Text('Email'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            fillColor: Colors.blue.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.grey)),
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Forgot()));
                },
                child: Text('Forgot Password ?')),
          ),

          // button sign in

          GestureDetector(
            onTap: () {
              // setState(() {
              // if (_formkey.currentState!.validate()) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Processing Data')),
              //   );

              // });
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PageLayout()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 250),
              child: Container(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 35),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 120, 186, 240),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),

          // terms and conditions

          Row(
            children: [
              Checkbox(
                value: _check,
                onChanged: (value) {
                  setState(() {
                    _check = !_check;
                  });
                },
              ),
              Text(
                'I agree to',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Term()));
                  },
                  child: Text(
                    'Terms and Conditions',
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Not registered yet',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
