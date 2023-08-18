// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,elevation: 1, 
        title: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              faceStories(),
              owner(),
              owner(),

            ],
          ),
        )
        ),

    );
  }
}
Padding owner(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color:Colors.black,
                borderRadius: BorderRadius.circular(50) ),
                child: const Icon(Icons.person,color: Colors.white,size: 50,),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const Text("owner",style: TextStyle(fontWeight: FontWeight.w600,),),
                Row(
                  children: [
                    const Text("3h"),
                    const SizedBox(
                      width: 5, 
                    ),
                    SizedBox(
                      height: 15,
                      width: 15,
                      child: Image.asset("assets/earth.jpg"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        const SizedBox( width: 10,),
        const Row(
          children: [
            Text("My Post",style: TextStyle(fontSize: 25),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                Row(
                  children: [
                    const Text("100"),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        height: 30,
                        width: 40,
                        child: Image.asset("assets/like.jpg")),
                  ],
                ),
                 const Text("100 Comment"),
            ],
          ), 
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset("assets/singleLike.jpg")),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Like"),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20 ,
                    child: Image.asset("assets/comment.jpg")),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Comment"),
                ],
              ),
              Row(children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset("assets/share.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Share"),
              ],
              ),
            ],
          ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
      ],
    ),
    );
}
SizedBox faceStories(){
  return SizedBox(
    height: 180,
    child: ListView.builder(itemCount: 10,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context,int index) {
      return Container(
        width: 100,
        height: 170,
        margin: const EdgeInsets.all(8),
        child:  Stack(
          children: [
            ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/facebookStory.jpg",
                      fit: BoxFit.cover,
                    )),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Icon(Icons.person,color: Colors.white,),
                    ),
                    const Positioned(bottom: 7,
                    left: 15,
                    child: Text("owner",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

                    ),
          ],
        ),

      );
      
    }, 
    ),
  );
}

