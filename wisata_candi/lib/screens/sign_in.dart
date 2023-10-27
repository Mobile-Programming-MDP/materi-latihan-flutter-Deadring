import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget{
   SignInScreen({super.key});

  // todo 1 deklarasi variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignIn = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // tdo pasang appbar
      appBar: AppBar(title: Text('Sign In'),),
      //todo pasang body
body: Center(
  child: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16),
  child: Form(
    child: Column(
      //todo 4
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //todo 5
        TextFormField(
          controller: _usernameController,
          decoration: InputDecoration(
            labelText: "nama Pengguna",
            border: OutlineInputBorder(),
          ),
        ),
        // todo 6
        SizedBox(height: 20),
        TextFormField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: "Kata Sandi",
            errorText: _errorText.isNotEmpty ? _errorText : null,
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            obscureText: _obscurePassword,
          ),
        ),
        // todo 7
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: (){},
          child: Text('Sign In'),
        ),
        //todo 8
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text: 'Blm Punyo akun?',
            style: TextStyle(fontSize: 16, color: Colors.deepPurple),
            children: <TextSpan>[
              TextSpan(
                text: 'Daftar Sini.',
                style: TextStyle(
                  color: Colors.amber,
                  decoration: TextDecoration.underline,
                  fontSize: 16
              ),
              recognizer: TapGestureRecognizer() ..onTap = (){},
              )
            ]
          ),
        )
      ],
      )
      ),
),
    );
  }
}