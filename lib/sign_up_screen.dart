import 'package:class01/login_screen.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final TextEditingController fullName = TextEditingController();
  final TextEditingController emailid = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Center(
            child: Text('Signup',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
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

          const SizedBox(height: 50,),

          TextField(
            controller: fullName,
            decoration: InputDecoration(
              hintText: 'Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          const SizedBox(height: 20,),

          TextField(
            controller: emailid,
            decoration:InputDecoration(
              hintText: 'Email Id',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(Icons.email),
            ),
          ),

          const SizedBox(height: 20,),

          TextField(
            controller: username,
            decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          const SizedBox(height: 20,),

          TextField(
            controller: password,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: const Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),

              ),
            ),
          ),

          const SizedBox(height: 50,),

          ///Signup Botton
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20), // Set the border radius to 50% of the container height (40 / 2 = 20)
            ),
            child: const Center(
              child: Text(
                'Signup',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20,),


          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Loginscreen(),
                ),
              );
            },

            child: const Text(
              'Already have an account? Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight:FontWeight.w500,
                color: Colors.blue,
              ),


            ),
          )

        ],
      )

    );
  }
}

