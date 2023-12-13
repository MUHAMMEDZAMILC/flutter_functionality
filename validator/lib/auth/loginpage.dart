import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameCtrl = TextEditingController(),
              passCtrl = TextEditingController();
  bool userValid = false,passValid = false,formValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.infinity,
        child: Form(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextFormField(
                controller: usernameCtrl,
                onChanged: (value){
                  if (value.isEmpty) {
                    setState(() {
                      userValid = false;
                    });
                  }else{
                    setState(() {
                      userValid = true;
                    });
                  }
                  formValidfn();
                },
                decoration: InputDecoration(
                  hintText: 'Username',
                  label: const Text('Username'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.black26
                    ),
                  )
                ),
              ),
              const SizedBox(height: 15,),
              TextFormField(
                controller: passCtrl,
                onChanged: (value){
                  if (value.isEmpty) {
                    setState(() {
                      passValid = false;
                    });
                  }else{
                    setState(() {
                      passValid = true;
                    });
                  }
                  formValidfn();
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.black26
                    ),
                  )
                ),
              ),
              const SizedBox(height: 25,),
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber)
                      ),
                      onPressed: (){
                        log('onpress');
                      }, child: const Text('Login'))),
               formValid==false?   SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 185, 180, 163))
                      ),
                      onPressed: (){}, child: const Text('Login'))):const SizedBox(height: 0,),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
  formValidfn(){
    if (userValid ==true && passValid == true) {
      setState(() {
        formValid = true;
      });
    }else{
      setState(() {
        formValid = false;
      });
    }
  }
}