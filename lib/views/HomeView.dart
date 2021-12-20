import 'package:bella_frontend/deleteContact.dart';
import 'package:bella_frontend/views/models/contact.dart';
import 'package:flutter/material.dart';

import 'models/contactdetails.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Contactapp = [
    Contact(name: "Ella Kawsy", number:"+233546673466",email:"ella34@e", id:'1'),
    Contact(name: "Abigail", number:"+233558991123",email:"abis309@e", id:'1'),
    Contact(name: "Ruth", number:"+233546473406",email:"basie44@e", id:'1'),
    Contact(name: "Beatrice", number:"+233546373446",email:"sterella134@e", id:'1'),
    Contact(name: "Emma", number:"+233545872464",email:"emmasky654@e", id:'1'),
    Contact(name: "Lydia", number:"+233543573446",email:"lyriscus77@e", id:'1'),

    ];
  int _selectedIndex = 0;
  
  void _isSelected(int index){
    setState((){
    _selectedIndex=index;
    });
    
  }
List ViewsList = [

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text("Contacts",style: Theme.of(context).appBarTheme.titleTextStyle),
       bottom: PreferredSize(
         child: const TextField(
           decoration: InputDecoration(
            
             hintText: "serach contact",
             icon: Icon(Icons.search)
           ),
           ),

           preferredSize: Size.fromHeight(kToolbarHeight),
           ),

            ),
            bottomNavigationBar: BottomNavigationBar(items:const [
              BottomNavigationBarItem(icon:Icon(Icons.favorite,),label: "Favorite"),
              BottomNavigationBarItem(icon:Icon(Icons.timer,),label: "Recents"),
              BottomNavigationBarItem(icon:Icon(Icons.contacts,),label: "Contact"),
              BottomNavigationBarItem(icon:Icon(Icons.voicemail,),label: "Voicemail"),
            ],
            selectedIconTheme: Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,

            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            currentIndex: _selectedIndex,
            onTap: _isSelected,
            ),

         body: ListView.builder(itemBuilder: (context,index){
           return Dismissible(
             key: UniqueKey(),
             background: Container(
               color:Colors.pink,
               child: Icon(Icons.delete),),
               
               direction: DismissDirection.endToStart,
               confirmDismiss: (direction)async {
                 var results = await showDialog(context: (context), builder: (context) => DeleteContact());
                 return results;
               },
               onDismissed: (direction){
                 setState(() {});
               },
             child: InkWell(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                   return ContactDetails();
                 }));
               },
               child: ListTile(
                title: Text("Ella Kawsy"
                ,style: Theme.of(context).textTheme.bodyText1),
                subtitle: Text("+233548989755",style: Theme.of(context).textTheme.bodyText2),
                trailing: IconButton(onPressed: (){
                  showModalBottomSheet(context: context,builder:(context)=>Column(
                    children: [
                      TextButton(onPressed: (){
                        
                      }, child: Text("Edit"))
                    ],
                  ),);
                }, icon: Icon(Icons.more_horiz)),
               ),
             ),
           );
           
         },
         itemCount:30,

         ),   
       );
    
      
    
  }
}