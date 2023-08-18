// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// ignore: camel_case_types
class New_Account extends StatelessWidget {
  const New_Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Create New Account",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Create Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextEditingController(),
                 decoration: const InputDecoration(
                  labelText: "Enter your Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                 ),
                 keyboardType: TextInputType.name,
                 onChanged: (value) {
                   print(value);
                 },
                 onFieldSubmitted: (value) {
                   print(value);
                 },
                 
                ),
                const SizedBox(
                  height: 10,
                ),
                  TextFormField(
                  controller: TextEditingController(),
                 decoration: const InputDecoration(
                  labelText: "Enter your phone",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                 ),
                 keyboardType: TextInputType.phone,
                 onChanged: (value) {
                   print(value);
                 },
                 onFieldSubmitted: (value) {
                   print(value);
                 },
                 
                ),
                const SizedBox(
                  height: 10,
                ),
                  TextFormField(
                  controller: TextEditingController(),
                 decoration: const InputDecoration(
                  labelText: "Enter your Brithday",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today),
                 ),
                 keyboardType: TextInputType.datetime,
                 onChanged: (value) {
                   print(value);
                 },
                 onFieldSubmitted: (value) {
                   print(value);
                 },
                 
                ),
                const SizedBox(
                  height: 10,
                ),
                  TextFormField(
                  controller: TextEditingController(),
                 decoration: const InputDecoration(
                  labelText: "Enter your Grander",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                 ),
                 keyboardType: TextInputType.text,
                 onChanged: (value) {
                   print(value);
                 },
                 onFieldSubmitted: (value) {
                   print(value);
                 },
                 
                ),
                const SizedBox(
                  height: 10, 
                ),
                  TextFormField(
                  controller: TextEditingController(),
                 decoration: const InputDecoration(
                  labelText: "Create your Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                 ),
                 keyboardType: TextInputType.visiblePassword,
                 onChanged: (value) {
                   print(value);
                 },
                 onFieldSubmitted: (value) {
                   print(value);
                 },
                 
                ),
                const SizedBox(
                  height: 10,
                ),
                  TextFormField(
                  controller: TextEditingController(),
                 decoration: const InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                 ),
                 obscureText: true,
                 keyboardType: TextInputType.visiblePassword,
                 onChanged: (value) {
                   print(value);
                 },
                 onFieldSubmitted: (value) {
                   print(value);
                 },
                ),
                const SizedBox(
                  height: 30,
                ),
                   Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 30, 3, 166),
                  child:  ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("home_screen");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    backgroundColor: Colors.white.withOpacity(0.2),
                    elevation: 0,
                  ),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "LOGIN New Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                )
                ),
                


              ],
              
            ),
          ),
        ),
      ),

    );
  }
  
}