import 'package:class01/home.dart';
import 'package:class01/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool isHide = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
          ),
        ),
        backgroundColor: Colors.blue,


      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 20,
          left: 17,
          right: 17,
          bottom: 20,
        ),
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [

          const SizedBox(height: 15,),

         ///Image
          Image.asset(
            'assests/logo.png.png',
            height: 230,
          ),

          const SizedBox(height: 35,),

          ///email Textfield
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              hintText: 'Enter your Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(Icons.email),
              filled: true,
              fillColor: Colors.grey[200],

            ),
          ),


          const SizedBox(height: 20,),

          ///password Textfield
          TextField(
            controller: passwordcontroller,
            obscureText: isHide,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                ),
              hintText: 'Enter your Password',
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isHide = !isHide;
                    });

                  },

                  icon:Icon(
                      isHide?  Icons.visibility_off_outlined : Icons.visibility,
                  ),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(15),
              // ),
              // prefixIcon: const Icon(Icons.lock),
              // filled: true,
              // fillColor: Colors.grey[200],
              ),
            ),
          ),

              const SizedBox(height: 50,),

           ///Login Botton
          InkWell(
            onTap: () {
              if(emailcontroller.text.isEmpty || passwordcontroller.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Email or Password is Empty.'),)
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              }
            },

            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20), // Set the border radius to 50% of the container height (40 / 2 = 20)
              ),
              child: const Center(
                child: Text(
                  'Login Button',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),


          const SizedBox(height: 20,),

          /// TO signup page link
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Signupscreen(),
                ),
              );
            },

            child: const Text(
              'Doesnot have account? Signup',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight:FontWeight.w500,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
