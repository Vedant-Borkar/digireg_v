import 'package:hive_flutter/hive_flutter.dart';

class AppDataBase {

  //List toDoList = [];
  String p11 = "";
  String p13 = "";
  String p15 = ""; 
  
  String p21 = "";
  String p23 = "";
  String p25 = "";
  String p31 = "";
  String p33 = "";
  String p35 = "";
  
  String q11 = "";
  String q13 = "";
  String q15 = ""; 
  String q21 = "";
  String q23 = "";
  String q25 = "";
  String q31 = "";
  String q33 = "";
  String q35 = "";
  
  String p11p = "";
  String p13p = "";
  String p15p = ""; 
  String p21p = "";
  String p23p = "";
  String p25p = "";
  String p31p = "";
  String p33p = "";
  String p35p = "";

  String profit = "";

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening this app
  void createInitialData() {
    /*toDoList = [
      ["Make an BMI App", true],
      ["Make a ToDo App", false],
    ];*/
    p11 = "0";
   p13 = "0";
   p15 = "0"; 
   
   p21 = "0";
   p23 = "0";
   p25 = "0";
   p31 = "0";
   p33 = "0";
   p35 = "0";
  
   q11 = "0";
   q13 = "0";
   q15 = "0"; 
   q21 = "0";
   q23 = "0";
   q25 = "0";
   q31 = "0";
   q33 = "0";
   q35 = "0";
  
   p11p = "0";
   p13p = "0";
   p15p = "0"; 
   p21p = "0";
   p23p = "0";
   p25p = "0";
   p31p = "0";
   p33p = "0";
   p35p = "0";
   
  }

  // load the data from database
  void loadData() {
    p11 = _myBox.get("INVENTORY1");
    p13 = _myBox.get("INVENTORY2");
    p15 = _myBox.get("INVENTORY3");
    p21 = _myBox.get("INVENTORY4");
    p23 = _myBox.get("INVENTORY5");
    p25 = _myBox.get("INVENTORY6");
    p31 = _myBox.get("INVENTORY7");
    p33 = _myBox.get("INVENTORY8");
    p35 = _myBox.get("INVENTORY9");
   
    q11 = _myBox.get("INVENTORY11");
    q13 = _myBox.get("INVENTORY12");
    q15 = _myBox.get("INVENTORY13");
    q21 = _myBox.get("INVENTORY14");
    q23 = _myBox.get("INVENTORY15");
    q25 = _myBox.get("INVENTORY16");
    q31 = _myBox.get("INVENTORY17");
    q33 = _myBox.get("INVENTORY18");
    q35 = _myBox.get("INVENTORY19");

    p11p = _myBox.get("INVENTORY21");
    p13p = _myBox.get("INVENTORY22");
    p15p = _myBox.get("INVENTORY23");
    p21p = _myBox.get("INVENTORY24");
    p23p = _myBox.get("INVENTORY25");
    p25p = _myBox.get("INVENTORY26");
    p31p = _myBox.get("INVENTORY27");
    p33p = _myBox.get("INVENTORY28");
    p35p = _myBox.get("INVENTORY29");
    
    profit = _myBox.get("PR");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("INVENTORY1", p11);
    _myBox.put("INVENTORY2", p13);
    _myBox.put("INVENTORY3", p15);
    _myBox.put("INVENTORY4", p21);
    _myBox.put("INVENTORY5", p23);
    _myBox.put("INVENTORY6", p25);
    _myBox.put("INVENTORY7", p31);
    _myBox.put("INVENTORY8", p33);
    _myBox.put("INVENTORY9", p35);
    
    _myBox.put("INVENTORY11", q11);
    _myBox.put("INVENTORY12", q13);
    _myBox.put("INVENTORY13", q15);
    _myBox.put("INVENTORY14", q21);
    _myBox.put("INVENTORY15", q23);
    _myBox.put("INVENTORY16", q25);
    _myBox.put("INVENTORY17", q31);
    _myBox.put("INVENTORY18", q33);
    _myBox.put("INVENTORY19", q35);

    _myBox.put("INVENTORY21", p11p);
    _myBox.put("INVENTORY22", p13p);
    _myBox.put("INVENTORY23", p15p);
    _myBox.put("INVENTORY24", p21p);
    _myBox.put("INVENTORY25", p23p);
    _myBox.put("INVENTORY26", p25p);
    _myBox.put("INVENTORY27", p31p);
    _myBox.put("INVENTORY28", p33p);
    _myBox.put("INVENTORY29", p35p);
    

    _myBox.put("PR", profit);
  }

}