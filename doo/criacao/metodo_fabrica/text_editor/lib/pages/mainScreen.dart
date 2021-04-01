import 'package:flutter/material.dart';
import 'package:text_editor/model/factoryIconButton.dart';

import '../main.dart';

class MyHomePageState extends State<MyHomePage> {
 double _fontSize=20.0;

      void increaseFontSize() {
        setState(() {
            _fontSize++;
        });
      }
    
      void decreaseFontSize() {
        setState(() {
            _fontSize--;
        });
      }
      
      @override
      Widget build(BuildContext context) {  
        //
        // This method is rerun every time setState is called, for instance as done
        // by the _incrementCounter method above.
        //
        // The Flutter framework has been optimized to make rerunning build methods
        // fast, so that you can just rebuild anything that needs updating rather
        // than having to individually change instances of widgets.
      
        var textStyle = TextStyle( fontSize: _fontSize);
        Scaffold conatiner =  Scaffold(
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
          ),
          body: Align(        
            alignment: Alignment.topLeft,
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.         
            child: Column(     
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[           
                Padding(              
                  padding: EdgeInsets.all(20.0),
                child :           
                Row(
                  children: [                
                    Text("Font Size:"),
                     Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child:
                     FactoryIconButton.getIconButton("UP", this),
                    ), 
                   Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child:FactoryIconButton.getIconButton("DOWN", this),), 
                 ],
                )),            
                Card(                
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: EdgeInsets.all(20.0)
                  ,
                  child:  Container(
                  height: 400,            
                  child:  
                  TextField(
                         style: textStyle,
                          maxLines: 8,                                               
                          decoration: InputDecoration(border: 
             InputBorder.none,           
             hintText: 'Seu Texto aqui') ,
  ),)
)
                 
              )
          
              ],
            ),
          ),
        );

        return conatiner;
      }
    
    
}
