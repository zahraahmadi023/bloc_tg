import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white10,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
        Form(
            child: Form(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              " SainIn ",
              style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 25,
                    ),
                    Expanded(
                        child: TextFormField(
                          textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: "email",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    )),
                  ],
                )),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.password,
                      color: Colors.white,
                      size: 25,
                    ),
                    Expanded(
                        child: TextFormField(
                          
                          obscureText: true,
                          textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        
                        border: InputBorder.none,
                        
                        hintText: "password",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    )),
                  ],
                )),
            const SizedBox(
              height: 12,
            ),
            const Text(
              " Idont account? SignUp ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ))),
        Positioned(
          bottom: 60,
          right: 20,
          left: 20,
          child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text("SignIn to page",
                            style: TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    )),
        ),
      ],
    );
  }
}
