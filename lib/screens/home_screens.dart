
import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:tryapp5/models/event.dart';
import 'package:tryapp5/root/app_root.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Event> events = [

    Event(
      title: "First Session",
      date: "Sep 16, 2023",
      time: "12:30 pm ",
    

      //date:DateTime.now(),
    ),

     Event(
      title: "Scound Session",
      date: "Sep 16, 2023",
       time: "2:30 pm",


      //date:DateTime.now(),
    ),

     Event(
      title: "Third Session",
      date: "Sep 16, 2023",
      time: "4:30 pm ",


     // date:DateTime.now(),
    ),
    Event(
      title: "Fourth Session",
      date: "Sep 16, 2023",
      time: "5:30 pm ",
      

     // date:DateTime.now(),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     



    body: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
          SafeArea(
            child: ListTile(
              
              leading: Image.asset('assets/per.png'),
              title: Text('Ahmed'),
              subtitle: Text("Psychologist"),
            ),
          ),
          Center(
            
            child: Container(
             
              child: Text("Doctorate degree in psychistry from Sultan Qaboos University.Experience: 3r years.Country: Oman, Muscat.price per hour: 13 OR"),
            ),
          ),
            
            _mainExample(),
            const SizedBox(
              height: 32.0,
            ),
           
           
        Expanded(
          
          child: Container(
            
            margin: EdgeInsets.all(5),
            child: ListView.builder(
                          
                itemBuilder: (context,index){
                return 
                Container(
                  
            child: Card(
              
              color: Colors.blueGrey,   
               child: ListTile(
            
                title: Text(events[index].title!, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                trailing: IconButton(onPressed: (){

                showModalBottomSheet(context: context, builder: (BuildContext context) {
                
						return  SizedBox(
							height: 160,
							child: Center(
								child: Column(
								mainAxisAlignment: MainAxisAlignment.center,
									children: [
										Container(
                          width: MediaQuery.sizeOf(context).width *.85,
                          height: MediaQuery.sizeOf(context).height *.04,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: Color.fromARGB(255, 79, 117, 199),),
                        
                         child: MaterialButton(
                          onPressed: () { },
                          child: Text('Book',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ), ),
                         
                           SizedBox( height: MediaQuery.sizeOf(context).height *.02,),
                        	Container(
                          width: MediaQuery.sizeOf(context).width *.85,
                          height: MediaQuery.sizeOf(context).height *.04,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: Colors.blueGrey,),
                        
                         child: MaterialButton(
                          onPressed: () { },
                          child: Text('Cancel',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ), ),
                              
									],
								),
							),
						);
					},
              );
                
                }, icon: Icon(Icons.more_horiz,color: Colors.white,)),
          
                
                
                subtitle: ListBody(
                  
                      children: [
                        
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Icon(Icons.list_alt_rounded,color: Colors.white,),
                            SizedBox(width: MediaQuery.sizeOf(context).width* .05,),
                            Text(events[index].date!,style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        
                        Row(
                          children: [
                            Icon(Icons.timelapse,color: Colors.white,),
                            SizedBox(width: MediaQuery.sizeOf(context).width* .05,),
                            Text(events[index].time!,style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                   
                  ),
                ),
            ),
                );
              
                 
              },
              
              itemCount: events.length,
              
              ),
          ),
        ),

           

          ],
        ),
      
    );
    
  }

  EasyDateTimeLine _mainExample() {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
      },
    );
  }

  
 }