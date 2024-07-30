import 'package:flutter/material.dart';
import 'package:untitled/ui/auth/signup_screen.dart';
import 'package:untitled/widgets/round_button.dart';


class SignUpScreen extends StatefulWidget{
  const SignUpScreen({Key? key}): super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen>{
  final _formKey=GlobalKey<FormState>();
  final  emailController= TextEditingController();
  final  passwardController=TextEditingController();

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwardController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sign in'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key:_formKey,
                child:Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: passwardController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_open)
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter password';
                        }
                        return null;
                      },
                    ),
                  ],
                )
            ),
            const SizedBox(height: 50,),
            RoundButton(
                title:'sign in',
                onTap: () {
                  if (_formKey.currentState!.validate()) {}
                  const SizedBox(height: 50,);
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('already have account?'),
                      TextButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUpScreen())
                        );
                      },
                          child: Text('login'))
                    ],
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
