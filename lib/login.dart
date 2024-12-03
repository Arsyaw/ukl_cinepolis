import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ukl_cinepolis/text_login.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final ValueNotifier<bool> _isObcured = ValueNotifier<bool>(true);

  final ValueNotifier<bool> _isChecked = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 600,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('cinepolislogin.png'), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hai Moviegoers!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 13, 15, 114)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sudah siap merasakan pengalaman menonton',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 13, 15, 114)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'yang tidak terlupakan?',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 13, 15, 114)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email or WhatsAppNumber',
                      style: TextStyle(fontSize: 15),
                    )),
                Container(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    style: TextStyle(color: Colors.grey),
                    obscureText: false,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 15),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: ValueListenableBuilder(
                        valueListenable: _isObcured,
                        builder: (context, isObcured, child) {
                          return TextField(
                            obscureText: isObcured,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    _isObcured.value = !isObcured;
                                  },
                                  icon: Icon(
                                    isObcured
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                )),
                          );
                        })),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: ValueListenableBuilder<bool>(
                    valueListenable: _isChecked,
                    builder: (context, isChecked, child) {
                      return Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                _isChecked.value = value!;
                              }),
                          Text(
                              'Ya, saya menerima syarat dan ketentuan yang berlaku.')
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Color.fromARGB(192, 16, 34, 148),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/dashboard');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 18, 29, 126),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  child: Container(
                    width: 400,
                    height: 45,
                    child: Center(
                      child: Text('Login'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextLogin()
              ],
            )
          ],
        ),
      ),
    );
  }
}
