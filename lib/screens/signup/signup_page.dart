import 'package:flutter/material.dart';
import 'package:carex/theme/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.skyBlue,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  height: size.height - size.height * 0.04,
                  width: size.width,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: Icon(Icons.arrow_back_ios_new_rounded),
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: const AssetImage(
                                  'assets/images/signup.png',
                                ),
                                fit: BoxFit.scaleDown,
                                height: size.height / 2.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        left: 0.0,
                        child: Container(
                          height: size.height / 1.8,
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Create \nAccount",
                                  style: TextStyle(
                                    fontSize: size.height * 0.05,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                                    child: TextField(
                                      //controller: passwordController,
                                      decoration: InputDecoration(
                                        icon:
                                            Icon(Icons.alternate_email_rounded),
                                        iconColor: AppColors.skyBlue,
                                        border: InputBorder.none,
                                        hintText: "Email",
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                                    child: TextField(
                                      //controller: passwordController,
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.password_rounded),
                                        iconColor: AppColors.skyBlue,
                                        border: InputBorder.none,
                                        hintText: "Password",
                                      ),
                                      obscureText: true,
                                      enableInteractiveSelection: false,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.password_rounded),
                                        iconColor: AppColors.skyBlue,
                                        border: InputBorder.none,
                                        hintText: "Confirm Password",
                                      ),
                                      obscureText: true,
                                      enableInteractiveSelection: false,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(50),
                                    primary: AppColors.skyBlue,
                                  ),
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 10.0, right: 15.0),
                                          child: const Divider(
                                            color: Colors.black,
                                            height: 50,
                                          )),
                                    ),
                                    const Text("or"),
                                    Expanded(
                                      child: Container(
                                          margin: const EdgeInsets.only(
                                              left: 15.0, right: 10.0),
                                          child: const Divider(
                                            color: Colors.black,
                                            height: 50,
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                        'assets/icons/google.png',
                                      ),
                                      fit: BoxFit.scaleDown,
                                      height: 32,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        'assets/icons/facebook.png',
                                      ),
                                      fit: BoxFit.scaleDown,
                                      height: 32,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 17,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Already have an acount ? ",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.skyBlue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
