
import 'package:flutter/material.dart';
class niv extends StatefulWidget {
  const niv({super.key});

  @override
  State<niv> createState() => _nivState();
}

class _nivState extends State<niv> {
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$").hasMatch(value))
                    {
                      return"Please enter valid mail id";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Mail id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (va){
                    if(va!.isEmpty ||
                        !RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$").hasMatch(va))
                    {
                      return"please enter valid Password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (vaa){
                    if(vaa!.isEmpty ||
                        !RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(vaa))
                    {
                      return"Please enter valid mobile number";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Mobile Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  if(_key.currentState!.validate())
                  {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ini()),
                    );
                  }
                  else ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("correct mail id and Password")));
                },
                    child: Text("login")),
              ),

              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ini()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("img.png"),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
