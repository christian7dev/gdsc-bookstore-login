import 'package:flutter/material.dart';
import 'package:gdscbookstore/widget.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formkey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [

              //Image
              Container(
                height: 300,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20) , bottomRight: Radius.circular(20)),
                  color: Colors.blueGrey,
                  image: DecorationImage(
                      image: AssetImage("assets/logo.jpg"),
                    fit: BoxFit.fill
                  ),
                ),
              ),

              // Welcome
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                    "WELCOME BACK!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.indigo.shade900
                  ),
                ),
              ),
              const Text(
                "Login To Your Account",
                style: TextStyle(
                  fontSize:17,
                  color: Colors.grey
                ),
              ),

              //form
              Padding(
                padding: const EdgeInsets.only(top: 50 , left: 20 , right: 20),
                child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "email required";
                    }
                  },
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    hintText: "Email"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20 , left: 20 , right: 20),
                child: TextFormField(
                  controller: _password,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Password required";
                    }
                  },
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      hintText: "Password"
                  ),
                ),
              ),


              //button
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: InkWell(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      if(_email.text == "abebe" && _password.text == "123"){
                        print("Logged in");
                      }
                      else{
                        print("wrong username or password");
                      }
                    }
                  },
                    child: Button(name: "Login",)
                ),
              ),



              //forget passweord
              InkWell(
                onTap: (){
                  print("forget password clicked");
                },
                child: const Text(
                  "Forget Paassword ?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),

              const SizedBox(
                height: 70,
              ),

              //signup
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      "Didn't have account ?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      print("signup clicked");
                    },
                    child: const Text(
                        "SignUp",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
