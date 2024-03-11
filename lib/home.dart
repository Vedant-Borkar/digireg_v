/*/*
                    ::::: NOTE :::::
Do'nt touch this file 
It's for the tabs only make changes in respective section
*/

import 'package:digireg/chart_page.dart';
import 'package:digireg/sections/inventory_section.dart';
import 'package:digireg/sections/purchase_section.dart';
import 'package:digireg/sections/sales_section.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Grocery
  final _control11i = TextEditingController();
  final _control11s = TextEditingController();

  final _control11p = TextEditingController();
  final _control12p = TextEditingController();
  final _control13p = TextEditingController();
  final _control14p = TextEditingController();
  final _control15p = TextEditingController();
  final _control16p = TextEditingController();

  final _control12i = TextEditingController();
  final _control12s = TextEditingController();
  final _control13i = TextEditingController();
  final _control13s = TextEditingController();
  final _control14i = TextEditingController();
  final _control14s = TextEditingController();
  final _control15i = TextEditingController();
  final _control15s = TextEditingController();
  final _control16i = TextEditingController();
  final _control16s = TextEditingController();
  //amt
  final _control11as = TextEditingController();
  final _control12as = TextEditingController(); 
  final _control13as = TextEditingController(); 
    //amt
  final _control11ap = TextEditingController();
  final _control12ap = TextEditingController(); 
  final _control13ap = TextEditingController(); 
  //Dairy
  final _control21i = TextEditingController();
  final _control21s = TextEditingController();
  final _control22i = TextEditingController();
  final _control22s = TextEditingController();
  final _control23i = TextEditingController();
  final _control23s = TextEditingController();
  final _control24i = TextEditingController();
  final _control24s = TextEditingController();
  final _control25i = TextEditingController();
  final _control25s = TextEditingController();
  final _control26i = TextEditingController();
  final _control26s = TextEditingController();

  final _control21p = TextEditingController();
  final _control22p = TextEditingController();
  final _control23p = TextEditingController();
  final _control24p = TextEditingController();
  final _control25p = TextEditingController();
  final _control26p = TextEditingController();

  //amt
  final _control21as = TextEditingController();
  final _control22as = TextEditingController(); 
  final _control23as = TextEditingController(); 
    //amt
  final _control21ap = TextEditingController();
  final _control22ap = TextEditingController(); 
  final _control23ap = TextEditingController(); 
  //Vegetables
  final _control31i = TextEditingController();
  final _control31s = TextEditingController();
  final _control32i = TextEditingController();
  final _control32s = TextEditingController();
  final _control33i = TextEditingController();
  final _control33s = TextEditingController();
  final _control34i = TextEditingController();
  final _control34s = TextEditingController();
  final _control35i = TextEditingController();
  final _control35s = TextEditingController();
  final _control36i = TextEditingController();
  final _control36s = TextEditingController();

  final _control31p = TextEditingController();
  final _control32p = TextEditingController();
  final _control33p = TextEditingController();
  final _control34p = TextEditingController();
  final _control35p = TextEditingController();
  final _control36p = TextEditingController();
  //amt
  final _control31as = TextEditingController();
  final _control32as = TextEditingController(); 
  final _control33as = TextEditingController(); 
  //amt
  final _control31ap = TextEditingController();
  final _control32ap = TextEditingController(); 
  final _control33ap = TextEditingController(); 
  //Grand TOTAL
  final _controlts = TextEditingController();
  final _controltp = TextEditingController();
  ButtonState stateButton = ButtonState.idle;
  ButtonState stateButtons = ButtonState.idle;
  ButtonState stateButtonp=ButtonState.idle;

  void submits() async {
    setState(() {
      //Sales Section
      _control11as.text = (int.parse((_control11s.text == "")?"0":_control11s.text) * int.parse(_control12s.text)).toString();
      _control12as.text = (int.parse((_control13s.text == "")?"0":_control13s.text) * int.parse(_control14s.text)).toString();
      _control13as.text = (int.parse((_control15s.text == "")?"0":_control15s.text) * int.parse(_control16s.text)).toString();

      _control21as.text = (int.parse((_control21s.text == "")?"0":_control21s.text) * int.parse(_control22s.text)).toString();
      _control22as.text = (int.parse((_control23s.text == "")?"0":_control23s.text) * int.parse(_control24s.text)).toString();
      _control23as.text = (int.parse((_control25s.text == "")?"0":_control25s.text) * int.parse(_control26s.text)).toString();

      _control31as.text = (int.parse((_control31s.text == "")?"0":_control31s.text)  * int.parse(_control32s.text)).toString();
      _control32as.text = (int.parse((_control33s.text == "")?"0":_control33s.text) * int.parse(_control34s.text)).toString();
      _control33as.text = (int.parse((_control35s.text == "")?"0":_control35s.text)* int.parse(_control36s.text)).toString();

      _controlts.text = (int.parse(_control11as.text) + int.parse(_control12as.text) +int.parse(_control13as.text)+
                         int.parse(_control21as.text) + int.parse(_control22as.text) +int.parse(_control23as.text)+
                         int.parse(_control31as.text) + int.parse(_control32as.text) +int.parse(_control33as.text)).toString();

      _control11i.text = (int.parse(_control11i.text) - int.parse((_control11s.text == "")?"0":_control11s.text)).toString();
      _control13i.text = (int.parse(_control13i.text) - int.parse((_control13s.text == "")?"0":_control13s.text)).toString();
      _control15i.text = (int.parse(_control15i.text) - int.parse((_control15s.text == "")?"0":_control15s.text)).toString();
      _control21i.text = (int.parse(_control21i.text) - int.parse((_control21s.text == "")?"0":_control21s.text)).toString();
      _control23i.text = (int.parse(_control23i.text) - int.parse((_control23s.text == "")?"0":_control23s.text)).toString();
      _control25i.text = (int.parse(_control25i.text) - int.parse((_control25s.text == "")?"0":_control25s.text)).toString();
      _control31i.text = (int.parse(_control31i.text) - int.parse((_control31s.text == "")?"0":_control31s.text)).toString();
      _control33i.text = (int.parse(_control33i.text) - int.parse((_control33s.text == "")?"0":_control33s.text)).toString();
      _control35i.text = (int.parse(_control35i.text) - int.parse((_control35s.text == "")?"0":_control35s.text)).toString();

      stateButtons = ButtonState.success;
    });

    await Future.delayed(const Duration(seconds: 2));
    setState(() => stateButtons = ButtonState.idle);
  }
  void submitp() async {
    setState(() {
       //Purchase Section
      _control11ap.text = (int.parse((_control11p.text == "")?"0":_control11p.text)* int.parse((_control12p.text == "")?"0":_control12p.text)).toString();
      _control12ap.text = (int.parse((_control13p.text == "")?"0":_control13p.text)* int.parse((_control14p.text == "")?"0":_control14p.text)).toString();
      _control13ap.text = (int.parse((_control15p.text == "")?"0":_control15p.text)* int.parse((_control16p.text == "")?"0":_control16p.text)).toString();

      _control21ap.text = (int.parse((_control21p.text == "")?"0":_control21p.text)* int.parse((_control22p.text == "")?"0":_control22p.text)).toString();
      _control22ap.text = (int.parse((_control23p.text == "")?"0":_control23p.text)* int.parse((_control24p.text == "")?"0":_control24p.text)).toString();
      _control23ap.text = (int.parse((_control25p.text == "")?"0":_control25p.text)* int.parse((_control26p.text == "")?"0":_control26p.text)).toString();

      _control31ap.text = (int.parse((_control31p.text == "")?"0":_control31p.text)* int.parse((_control32p.text == "")?"0":_control32p.text)).toString();
      _control32ap.text = (int.parse((_control33p.text == "")?"0":_control33p.text)* int.parse((_control34p.text == "")?"0":_control34p.text)).toString();
      _control33ap.text = (int.parse((_control35p.text == "")?"0":_control35p.text)* int.parse((_control36p.text == "")?"0":_control36p.text)).toString();

      _controltp.text = (int.parse(_control11ap.text) + int.parse(_control12ap.text) +int.parse(_control13ap.text)+
                         int.parse(_control21ap.text) + int.parse(_control22ap.text) +int.parse(_control23ap.text)+
                         int.parse(_control31ap.text) + int.parse(_control32ap.text) +int.parse(_control33ap.text)).toString();

      //_control11i.text = (int.parse(_control11i.text) + int.parse((_control11p.text == "")?"0":_control11p.text)).toString();
      
      _control11i.text = (int.parse(_control11i.text) + int.parse((_control11p.text == "")?"0":_control11p.text)).toString();
      _control13i.text = (int.parse(_control13i.text) + int.parse((_control13p.text == "")?"0":_control13p.text)).toString();
      _control15i.text = (int.parse(_control15i.text) + int.parse((_control15p.text == "")?"0":_control15p.text)).toString();
      _control21i.text = (int.parse(_control21i.text) + int.parse((_control21p.text == "")?"0":_control21p.text)).toString();
      _control23i.text = (int.parse(_control23i.text) + int.parse((_control23p.text == "")?"0":_control23p.text)).toString();
      _control25i.text = (int.parse(_control25i.text) + int.parse((_control25p.text == "")?"0":_control25p.text)).toString();
      _control31i.text = (int.parse(_control31i.text) + int.parse((_control31p.text == "")?"0":_control31p.text)).toString();
      _control33i.text = (int.parse(_control33i.text) + int.parse((_control33p.text == "")?"0":_control33p.text)).toString();
      _control35i.text = (int.parse(_control35i.text) + int.parse((_control35p.text == "")?"0":_control35p.text)).toString();


      stateButtonp = ButtonState.success;
    });

    await Future.delayed(const Duration(seconds: 2));
    setState(() => stateButtonp = ButtonState.idle);
  }
  
  void submit() async {
    /*setState(() => stateButton = ButtonState.loading);
    await Future.delayed(const Duration(seconds: 1));*/
    setState(() {
      //Grocery
      //_control11s.text = _control11i.text;
      _control12s.text = _control12i.text;
      db.updateDatabase();
      //_control13s.text = _control13i.text;
      _control14s.text = _control14i.text;
      //_control15s.text = _control15i.text;
      _control16s.text = _control16i.text;

      //Dairy
      //_control21s.text = _control21i.text;
      _control22s.text = _control22i.text;
      //_control23s.text = _control23i.text;
      _control24s.text = _control24i.text;
      //_control25s.text = _control25i.text;
      _control26s.text = _control26i.text;
      //Vegetables
      //_control31s.text = _control31i.text;
      _control32s.text = _control32i.text;
      //_control33s.text = _control33i.text;
      _control34s.text = _control34i.text;
      //_control35s.text = _control35i.text;
      _control36s.text = _control36i.text;

      stateButton = ButtonState.success; 
    }); 
    await Future.delayed(const Duration(seconds: 2));
    setState(() => stateButton = ButtonState.idle);
  }
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ProfitLossChart())
          ),
          child: const Icon(Icons.analytics),
        ),
        backgroundColor: Colors.purple[50],
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xff29008e),
          title: const Text('Digireg'),
        ),

        body: Column(
          children: [
            Container(
              color: const Color(0xff29008e),
              child: const TabBar(
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white,width: 3),
                  ),
                ),
                tabs: [
                Tab(
                  child: Text("Sales"),
                ),
                Tab(
                  child: Text("Inventory"),
                ),
                Tab(
                  child: Text("Purchase"),
                )
              ],),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SalesSection(
                    x: stateButtons, onSaves: submits,controllert: _controlts,
                    //Grocery
                  controller11: _control11s,controller12: _control12s,controller13: _control13s,controller14: _control14s,controller15: _control15s,controller16: _control16s,
                    //Grocery amt
                  controller11a: _control11as,controller12a: _control12as,controller13a: _control13as,
                  //Dairy
                  controller21: _control21s,controller22: _control22s,controller23: _control23s,controller24: _control24s,controller25: _control25s,controller26: _control26s,
                   //Dairy amt
                  controller21a: _control21as,controller22a: _control22as,controller23a: _control23as,
                  //Vegetables
                  controller31: _control31s,controller32: _control32s,controller33: _control33s,controller34: _control34s,controller35: _control35s,controller36: _control36s,
                   //Vegetables amt
                  controller31a: _control31as,controller32a: _control32as,controller33a: _control33as,),
                  InventorySection(
                    //Grocery
                    controller11: _control11i,controller12: _control12i,controller13: _control13i,controller14: _control14i,controller15: _control15i,controller16: _control16i,
                    
                    onSave: submit,x: stateButton,
                    //Dairy
                    controller21: _control21i,controller22: _control22i,controller23: _control23i,controller24: _control24i,controller25: _control25i,controller26: _control26i,
                    //Vegetables
                  controller31: _control31i,controller32: _control32i,controller33: _control33i,controller34: _control34i,controller35: _control35i,controller36: _control36i,
                    ),
                  PurchaseSection(
                    x: stateButtonp, onSavep: submitp,controllerp: _controltp,
                    //Grocery
                  controller11: _control11p,controller12: _control12p,controller13: _control13p,controller14: _control14p,controller15: _control15p,controller16: _control16p,
                    //Grocery amt
                  controller11a: _control11ap,controller12a: _control12ap,controller13a: _control13ap,
                  //Dairy
                  controller21: _control21p,controller22: _control22p,controller23: _control23p,controller24: _control24p,controller25: _control25p,controller26: _control26p,
                   //Dairy amt
                  controller21a: _control21ap,controller22a: _control22ap,controller23a: _control23ap,
                  //Vegetables
                  controller31: _control31p,controller32: _control32p,controller33: _control33p,controller34: _control34p,controller35: _control35p,controller36: _control36p,
                   //Vegetables amt
                  controller31a: _control31ap,controller32a: _control32ap,controller33a: _control33ap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/