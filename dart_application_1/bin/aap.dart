import 'dart:io';


  void main (){
    var game = TicTacTo();

  game.fullGame();
 


}



class TicTacTo{

// indices of grids 
List<String> grids = ["1","2","3","4","5","6","7","8","9"];


// player name 
  String? xPlayer ;
  String? oPlayer ;

// player result
  int xResult  = 0;
  int oResult = 0 ;

  //counter to calculate hom many grid cell is choosen 
  int counter = 0 ;

  //user choice 
  late int userSelected  ;

  //restart 
  late int restart ;



void WelcomeToTicTacToe(){
  print("Welcome to tic - tac to game !");
  print("Enter the first player name (play as x) : ");
  xPlayer = stdin.readLineSync();
  print("Enter the second player name (play as o) : ");
  oPlayer = stdin.readLineSync();
  print("$xPlayer - x  vs $oPlayer - o");

}


void result(){
  print("Result Is");
  print("$xPlayer $xResult - $oPlayer $oResult");

}

void grid(){

  print("|---|---|---|");
  print("| ${grids[0]} | ${grids[1]} | ${grids[2]} |");
  print("| ${grids[3]} | ${grids[4]} | ${grids[5]} |");
  print("| ${grids[6]} | ${grids[7]} | ${grids[8]} |");
  print("|-----------|");
  

 
}

void start(){

  while(counter != 9){
    grid();

    if(counter % 2 != 0 ){
      print("$xPlayer chance - choose one of unselected cell (Enter its number 1 -> 9)");
      String userIn =  stdin.readLineSync() ?? "-1";
      userSelected = int.parse(userIn) - 1 ;

      while(grids[userSelected] == "x" ||  grids[userSelected] == "o" || userSelected > 8 || userSelected < 0){
        print("$xPlayer chance - you must select unselected box , and from 1 to 9 ");
        String userIn =  stdin.readLineSync() ?? "-1";
        userSelected = int.parse(userIn) - 1 ;

      }
      grids[userSelected] = "x";
      print(grids);
      counter++;


    }else{
      print("$oPlayer chance - choose one of unselected cell (Enter its number 1 -> 9)");
      String userIn =  stdin.readLineSync() ?? "-1";
      userSelected = int.parse(userIn) - 1 ;

      while(grids[userSelected] == "x" ||  grids[userSelected] == "o" || userSelected > 8 || userSelected < 0){
        print("$xPlayer chance - you must select unselected box , and from 1 to 9 ");
        String userIn =  stdin.readLineSync() ?? "-1";
        userSelected = int.parse(userIn) - 1 ;

      }
      grids[userSelected] = "o";
      counter++;

    }

    if(win() == true){
      if(counter % 2 == 0){
        print("-----------------");
        print("   $xPlayer win !");
         print("-----------------");
        xResult++;
      }else{
         print("-----------------");
        print("  $oPlayer win !");
         print("-----------------");
        oResult++;
      }
      break;
    }

  }

  startAgain();



}

void startAgain(){
  print("do you want to restart again ? ");
  print("press 1 : yes - press any thing else : no");
   String restartAG =  stdin.readLineSync() ?? "null";
   restart = int.parse(restartAG) ;

   if(restart == 1){
    counter = 0 ;
    grids = ["1","2","3","4","5","6","7","8","9"];
    start();
      grid();
  result();
   }else{
    print("quite game");
   }

}

void fullGame(){
  WelcomeToTicTacToe();
  start();
  grid();
  result();

}


bool win(){
  if(grids[0] == grids[1] && grids[1] == grids[2]){
return true;
  }else if(grids[3] == grids[4] && grids[4] == grids[5]){
    return true;

  }else if (grids[6] == grids[7] && grids[7] == grids[8]){
    return true;

  }else if (grids[0] == grids[3] && grids[3] == grids[6]){
    return true;
    
  }else if (grids[1] == grids[4] && grids[4] == grids[7]){
    return true;
    
  }else if (grids[2] == grids[5] && grids[5] == grids[8]){
    return true;
    
  }else if (grids[0] == grids[4] && grids[4] == grids[8]){
    return true;
    
  }else if (grids[2] == grids[4] && grids[4] == grids[8]){
    return true;
    
  }else{
    return false ;
  }

}


}