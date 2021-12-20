import 'package:bella_frontend/deleteContact.dart';
import 'package:flutter/material.dart';



class ContactDetails extends StatefulWidget {
  const ContactDetails({ Key? key }) : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF1F1F1),
      body:SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.black,
                ),
                Row(
                  children: [
                    TextButton(onPressed: (){}, child: Text(
                      "Edit",
                      style: TextStyle(fontSize: 20,color: Colors.black),

                    ),
                    ),
                    IconButton(onPressed: (){print("are you sure you want to delete");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DeleteContact()));
                    }, 
                    icon: Icon(Icons.delete,size:20),
                    color:Colors.black,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/5,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF5E6F84),
                image: DecorationImage(image: AssetImage("../assets/itech.dng"
                ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width /4,
                        ),
                        Text(
                          "Ella",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){
                              setState((){
                                isliked = true;
                              });
                            }, 
                            icon: isliked
                            ?Icon(Icons.star_sharp,color: Colors.red,)
                            :Icon(Icons.star_border_outlined)),
                          ],
                        ),

                      ],
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: (){}, child: Text("Voice call")),
                          TextButton(
                            onPressed: (){}, child: Text("+233558789655")),
                            Spacer(),
                            IconButton(
                              onPressed: (){}, icon: Icon(UniconsLine.whatsapp_alt)),
                      ],
                    
                    ),  
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                              "Mobile",
                              style:
                               TextStyle(color:Colors.grey),
                            ),
                              Text("+233546767856",
                              style:TextStyle(fontSize: 20)),
                          ],
                          
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon:  Icon(UniconsLine.phone),
                              ),
                              IconButton(onPressed: (){}, icon: Icon(UniconsLine.comment_message),
                              ),
                            ],
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: (){}, child: Text("Video call")),
                          TextButton(
                            onPressed: (){}, child: Text("+233506077634")),
                            Spacer(),
                            IconButton(
                              onPressed: (){}, icon: Icon(UniconsLine.whatsapp_alt)),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("E-mail",
                            style: 
                            TextStyle(color: Colors.grey)),
                            TextButton(
                              onPressed: (){}, child: Text("ella@gmail.com")),
                          ],
                          ),
                          IconButton(
                            onPressed: (){}, icon: Icon(Icons.email)),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    )
                  ],
                ),
              ),
              ),
          ],
      
        ),
        ),
    );
    
  }

  
}

class UniconsLine {
  static IconData? whatsapp_alt;

  static IconData? phone;

  static IconData? comment_message;
}