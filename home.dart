import 'package:first_clone/home2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // leadingWidth: 250,
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "Log in",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:  TextField(
                controller: b,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 20),
                  hintText: "Username",
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: a,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintStyle: TextStyle(fontSize: 20),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Home2(
                  name: a.text,
                log: b.text,
                ),
              )),
              child: Container(
                height: 50,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25),
                  child: Text("Submit",
                      style: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold)),
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Container(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Create a new account?",style: TextStyle(color: Colors.blueGrey),),
            ),),
            Container(
              child: Image(image: NetworkImage("https://logowik.com/content/uploads/images/mm935239.jpg",)),
              
            )
          ],
        ),
      ),
    );
  }
}
