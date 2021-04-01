
Este projeto mostra como utilizar o padrão de projetos método fábrica. 

''
class FactoryIconButton{

      static getIconButton(String buttonType, State state){
         MyHomePageState myState  = state;
         IconButton iconButton;
         if(buttonType == "UP"){                   
            iconButton = new  IconButton(
                    icon: Icon(Icons.arrow_upward),
                   color: Colors.black,
                   onPressed: () { myState.increaseFontSize(); 
                       });                        
          }
          else if(buttonType == "DOWN") {
                iconButton = new  IconButton(
                    icon: Icon(Icons.arrow_downward),
                   color: Colors.black,
                   onPressed: () { myState.decreaseFontSize(); 
                       });
          }else{
            throw new Exception("IconButton not found");
         }
       return iconButton;
      }


}


'' \$ fluter devices

'' \$ fluter run


