import 'package:flutter/material.dart';
import 'package:water_project/constants.dart';
import 'package:water_project/constants.dart';

import '../../constants.dart';
import '../../core/widgets/button.dart';

class AddProject extends StatefulWidget {
  static const id = "add project screen";
  const AddProject({Key? key}) : super(key: key);

  @override
  State<AddProject> createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Key passkey = GlobalKey();
  final Key emailKey = GlobalKey();
  final Key nameKey = GlobalKey();
  final Key comfirmpasskey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left:234, right: 234, top: 90, bottom: 100),
          
          
          child: Row(
            children: [
              Expanded(
                flex: 5,
                
                
                child: Container(
                  decoration: BoxDecoration(
                    color:  kPurple80,
                    borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0)), 
                  ),

                  height: 708,
                  width: 406,
                  
                  child: Text(''))),
              Expanded(
                flex: 11,
               
                  child: Column(
                    children: [
                      Form(
                        key: formKey,
                        child: Center(
                          child: SizedBox(
                            // width: screenSize.width * .2,
                            child: Padding(
                              padding: const EdgeInsets.only(left:54, right: 53),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Project Name",
                                    style: theme.textTheme.bodyText2,
                                  ),
                                  const SizedBox(height: kDefaultPadding / 2),
                                  TextFormField(
                                    key: nameKey,
                                  
                                    decoration:
                                        customTextFieldDecoration.copyWith(hintText: "project Name"),
                                    validator: (value) {
                                      // if (value==null) {
                                      //   return "Please Input a valid email address";
                                      // } else {
                                      //   return null;
                                      // }
                                    },
                                  ),
                                  const SizedBox(height: kDefaultPadding2x),
                                   Text(
                                    "Description",
                                  ),
                                  const SizedBox(height: kDefaultPadding / 2),

                                  TextFormField(
                                    key: emailKey,
                                    controller: emailController,
                                    decoration:
                                        customTextFieldDecoration.copyWith(hintText: "email"),
                                    validator: (value) {
                                      if (!value!.contains("@")) {
                                        return "Please Input a valid email address";
                                      } else {
                                        return null;
                                      }
                                    },
                                    maxLines: 10,
                                    minLines: 8,
                                  ),
                                 
                                  const SizedBox(height: kDefaultPadding2x),
                                   Text(
                                    "Location",
                                    style: theme.textTheme.bodyText1,
                                  ),
                                  const SizedBox(height: kDefaultPadding / 2),
                                 

                                  TextFormField(
                                    key: comfirmpasskey,
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration:
                                        customTextFieldDecoration.copyWith(hintText: "Password"),
                                    validator: (value) {
                                      // Place  function for drop down menu
                                    },
                                  ),
                                  // const SizedBox(height: kDefaultPadding/2),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 293),
                                  //   child: CustomButton(
                                      
                                  //     onPressed: () {
                                  //       if (formKey.currentState!.validate()) {
                                  //         ///TODO: add methods to sign the user in
              
                                  //       }
                                  //     },
                                  //     text: "SignUp",
                                  //     textColor: Colors.white,
                                  //     bgColor: kPurple,
                                  //   ),
                                  // ),
                                  // const SizedBox(height: kDefaultPadding),
                                 
                                ],
                              ),
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
    );
  }
}