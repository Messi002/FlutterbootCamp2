import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key ? key}):super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bmi Calculator',style: TextStyle(fontFamily:'Pacifico'),),
        ),
        body: Column(
          children: [
            Expanded(
              
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                    
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                       boxShadow: [
      BoxShadow(
        color: Colors.deepPurple.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ],
                       color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                    
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      boxShadow: [
      BoxShadow(
        color: Colors.deepPurple.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ],
                       color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0), 
                      
                    ),
                    ),
                  ),
                ],
              ),
            ),
            

              Expanded(
                    child: Container(
                   
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      boxShadow: [
      BoxShadow(
        color: Colors.deepPurple.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ],
                       color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                    ),
                  ),



            Expanded(
              
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                   
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      boxShadow: [
      BoxShadow(
        color: Colors.deepPurple.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ],
                       color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                   
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      boxShadow: [
      BoxShadow(
        color: Colors.deepPurple.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ],
                       color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0), 
                    ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
        
      ),
    );
  }
}