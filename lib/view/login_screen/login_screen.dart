import 'package:flutter/material.dart';
import 'package:instagram/core/constants/color_constants.dart';
import 'package:instagram/core/constants/image_constants.dart';
import 'package:instagram/global_widgets/global_widgets.dart';
import 'package:instagram/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:instagram/view/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController nameController = TextEditingController();
  
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),


      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
            
               mainAxisSize: MainAxisSize.min,
            
              children: [
                
                Image.asset(ImageConstants.instaLogoPng),
                SizedBox(height: 39,),
                TextField(

                  controller: nameController,

                  onChanged: (value) {
                    setState(() {
                      
                    });
                  },

                  onTap: () {
                    

                    FocusScope.of(context).unfocus();   ///for clicking outside keyboard down
                  },
                  
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 11.5,horizontal: 15),
                    fillColor: ColorConstants.lightGrey,
                filled: true,
                  hintText: "Phone number,email or username",
                  labelStyle: TextStyle(color: ColorConstants.primaryBlack),
                  hintStyle: TextStyle(color: ColorConstants.primaryBlack.withOpacity(.2)),
                  border: OutlineInputBorder(
                    
                    borderSide: BorderSide(color: ColorConstants.primaryBlack.withOpacity(.4))
                  )
            
                ),)
                ,SizedBox(height: 12,),
                 TextField(
                  controller: passwordController,
                  onChanged: (value) {
                    setState(() {
                      
                    });
                  },
                 obscureText: true,
                  decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 11.5,horizontal: 15),
             fillColor: ColorConstants.lightGrey,
                filled: true,
                  hintText: "Password",
                  
                  labelStyle: TextStyle(color: ColorConstants.primaryBlack),
                                  hintStyle: TextStyle(color: ColorConstants.primaryBlack.withOpacity(.2)),
            
                  border: OutlineInputBorder(
                    
                    borderSide: BorderSide(color: ColorConstants.primaryBlack.withOpacity(.4))
                  )
            
                ),),
                SizedBox(height: 19,),
            
                Container(
                  alignment: Alignment.centerRight,
                  
                  child: Text("Forgot password?",style: TextStyle(color: ColorConstants.primaryBlue),),
                ),SizedBox(height: 30,),
                CustomButton(
                  
                  buttonColor:nameController.text.isNotEmpty && passwordController.text.isNotEmpty?
                  
                   ColorConstants.primaryBlue:ColorConstants.primaryBlue.withOpacity(.4), havVBorder: false, text: "Log in",
                
                onTap: () {
                  
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavScreen(),), (route) => false);
                },
                ),SizedBox(height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageConstants.facebookLogoPng,),SizedBox(width: 10,),
                    Text("Log in With Facebook",style: TextStyle(color: ColorConstants.primaryBlue,fontSize: 14,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 41.5,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                       
                        endIndent: 30,
                      ),
                    ),
                    Text("OR",style: TextStyle(color: ColorConstants.primaryBlack.withOpacity(.4)),),
                    Expanded(
                      child: Divider(
                        indent: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 41.5,),
                Container(
             child:RichText(textAlign: TextAlign.center,text: TextSpan(text: "Dont you have an account? ",
            style: TextStyle(color: ColorConstants.primaryBlack.withOpacity(.4)),
            children: [TextSpan(text: "Sign Up",style: TextStyle(color: ColorConstants.primaryBlue,fontWeight: FontWeight.bold))]
            ))
                  ),
            
            
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
                padding: EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
            border: Border(top: BorderSide(width: .1))),

        child: Text("Instagram OT Facebook",textAlign: TextAlign.center,style: TextStyle(color: ColorConstants.primaryBlack.withOpacity(.4)),),
      ),
    );
  }
}