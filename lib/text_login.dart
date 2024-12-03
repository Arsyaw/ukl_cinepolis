import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Belum punya akun?'),
          SizedBox(
            width: 15,
          ),
          Text(
            'Daftar di sini',
            style: TextStyle(color: Color.fromARGB(225, 18, 29, 126)),
          )
        ],
      ),
    );
  }
}
