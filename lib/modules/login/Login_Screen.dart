
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var EmailController = TextEditingController();

  var PasswordController = TextEditingController();

  final formKey = GlobalKey<FormState >();

  late bool isPassword = true,


  override;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (

            ){
          print('menu');
        },
            icon: Icon(
              Icons.menu,

            )),
      ),
      body: Padding(

        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Login',

                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
               defaultFormFiled(controller: EmailController,
                   type: TextInputType.emailAddress,
                   prefix: Icons.email,
                 suffixpressed: (){},
                 validator:(String? value) {
                   if (value!.isEmpty) {
                     return "Email can't be empty";
                   }

                   return null;
                 },

                   label: 'email address',
               ),
                SizedBox(
                  height: 15,
                ),
                    defaultFormFiled(controller: PasswordController,
                        type: TextInputType.visiblePassword,
                        prefix: Icons.lock,
                        label: 'password',
                      suffix: isPassword?Icons.visibility:Icons.visibility_off,

                      isPassword: isPassword,
                      suffixpressed: (){
                      setState(() {
                        isPassword = !isPassword;
                      });
                      },
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "password can't be empty";
                        }

                        return null;
                      },

                    ),
                    SizedBox(
                  height: 20,
                ),
                DefaultButton(
                  radius: BorderRadius.circular(10),
                  BackgroundColor: Colors.blue  ,
                  function: (){
                    if(formKey.currentState!.validate())
                      {
                        print(EmailController.text);
                        print(PasswordController.text);
                      }
                  },
                  text: 'Login',

                ),
                SizedBox(
                  height: 20,
                ),
                DefaultButton(
            radius: BorderRadius.circular(10),
                    function: (){},
                    text: 'Register',

                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                    'Don\'t have an account?  '
                    ),
                    TextButton(onPressed: (){}, child: Text(
                     'Register Now '
                    ))
                  ],
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
