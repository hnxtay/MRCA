import 'package:flutter/material.dart';
import 'package:mrca/blocs/sign_up_screen_view_model.dart';
import 'package:mrca/screens/signin/sign_in_screen.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpScreenViewModel>(
      builder: (_, value, __) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/pictures/register.png'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 80),
                child: const Text(
                  "Create\nAccount",
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      right: 35,
                      left: 35,
                      top: MediaQuery.of(context).size.height * 0.27),
                  child: Column(children: [
                    // TextField(
                    //   decoration: InputDecoration(
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10),
                    //       borderSide: const BorderSide(color: Colors.black),
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10),
                    //       borderSide: const BorderSide(color: Colors.white),
                    //     ),
                    //     hintText: 'Name',
                    //     hintStyle: const TextStyle(color: Colors.white),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      onChanged: value.setEmail,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.white),
                      ),
                      onChanged: value.setPassword,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                value.signUpWithEmailAndPassword();
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignInScreen()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
