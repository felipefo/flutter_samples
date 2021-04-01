
## Descrição
Este projeto mostra como utilizar o padrão de projetos método fábrica. 

## Código do método fábrica 
~~~flutter
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

## Como rodar

ˋˋˋ \$ fluter devices

ˋˋˋ \$ fluter run

## Resultado

![Resultado](https://github.com/felipefo/flutter_samples/blob/main/doo/criacao/metodo_fabrica/visualizacao.png)

