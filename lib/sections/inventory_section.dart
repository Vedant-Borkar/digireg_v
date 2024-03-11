import 'package:flutter/material.dart';
import 'package:digireg/main.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
class InventorySection extends StatelessWidget {
  //Grocery
  final TextEditingController controller11;
  final TextEditingController controller12;
  final TextEditingController controller13;
  final TextEditingController controller14;
  final TextEditingController controller15;
  final TextEditingController controller16;

  //Dairy
  final TextEditingController controller21;
  final TextEditingController controller22;
  final TextEditingController controller23;
  final TextEditingController controller24;
  final TextEditingController controller25;
  final TextEditingController controller26;

  //Vegetables
  final TextEditingController controller31;
  final TextEditingController controller32;
  final TextEditingController controller33;
  final TextEditingController controller34;
  final TextEditingController controller35;
  final TextEditingController controller36;
  final VoidCallback onSave;
  final ButtonState x;

  const InventorySection({
    super.key,
    //Grocery
    required this.controller11,
    required this.controller12,
    required this.controller13,
    required this.controller14,
    required this.controller15,
    required this.controller16,
    //Dairy
    required this.controller21,
    required this.controller22,
    required this.controller23,
    required this.controller24,
    required this.controller25,
    required this.controller26,

    //Dairy
    required this.controller31,
    required this.controller32,
    required this.controller33,
    required this.controller34,
    required this.controller35,
    required this.controller36,
    required this.onSave,
    required this.x,
  });

  @override
  Widget build(BuildContext context) {
     mq = MediaQuery.of(context).size; 
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0,top: 10.0), // container widget of grocery card
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xff29008e),
                  ),
                  width: mq.width * .9,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container( // heading text
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: const Text(
                            'Grocery',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Table( // table of grocery
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow( // heading part of table
                              decoration: BoxDecoration(
                                color: Colors.amber[300],//const Color(0xffff007e),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                  child: const Center(child: Text('Items',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                                ),
                                const Center(child: Text('Qty',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                const Center(child: Text('Price',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                            TableRow( // rice row
                              children: [
                                const Center(child: Text('Rice-kg')), // text and rest 3 are inputs 
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller11,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller12,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow( // wheat row
                              children: [
                                const Center(child: Text('Wheat-kg')), // text and rest 3 are inputs
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 0.0,bottom: 0.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child:  TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller13,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller14,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow( // daal row
                              children: [
                                const Center(child: Text('Daal-kg')), // text and rest 3 are inputs
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller15,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller16,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                //Container Widget for Dairy Card
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xff29008e),
                  ),
                  width: mq.width * .9,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container( // heading text
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: const Text(
                            'Dairy',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Table( // table of grocery
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow( // heading part of table
                              decoration: BoxDecoration(
                                color: Colors.amber[300],//const Color(0xffff007e),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                  child: const Center(child: Text('Items',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                                ),
                                const Center(child: Text('Qty',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                const Center(child: Text('Price',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                            TableRow( // Milk row
                              children: [
                                const Center(child: Text('Milk-ltr')), // text and rest 3 are inputs 
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller21,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller22,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow( // Butter row
                              children: [
                                const Center(child: Text('Butter-kg')), // text and rest 3 are inputs
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 0.0,bottom: 0.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller23,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller24,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow( // Dahi row
                              children: [
                                const Center(child: Text('Dahi-kg')), // text and rest 3 are inputs
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller25,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller26,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //Column Widget for Vegetables
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xff29008e),
                  ),
                  width: mq.width * .9,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container( // heading text
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: const Text(
                            'Vegetables',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Table( // table of grocery
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow( // heading part of table
                              decoration: BoxDecoration(
                                color: Colors.amber[300],//const Color(0xffff007e),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                  child: const Center(child: Text('Items',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                                ),
                                const Center(child: Text('Qty',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                const Center(child: Text('Price',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                            TableRow( // Potato row
                              children: [
                                const Center(child: Text('Potato-1kg')), // text and rest 3 are inputs 
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller31,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller32,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow( // Tomato row
                              children: [
                                const Center(child: Text('Tomato-1kg')), // text and rest 3 are inputs
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 0.0,bottom: 0.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller33,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child:TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller34,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow( // Onion row
                              children: [
                                const Center(child: Text('Onion-1kg')), // text and rest 3 are inputs
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller35,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: mq.width * .15,
                                    height: mq.height * .045,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      controller: controller36,
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                /*MaterialButton(
                  padding: const EdgeInsets.all(10.0),
                  elevation: 10.0,
                  onPressed: (){},
                  minWidth: mq.width * .85,
                  color: const Color.fromARGB(255, 115, 6, 134),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                ),*/
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: ProgressButton.icon(iconedButtons: {
                    ButtonState.idle:
                      IconedButton(
                          text: "Submit",
                          icon: const Icon(Icons.send,color: Colors.white),
                          color: Colors.pink.shade600),
                    ButtonState.loading:
                      IconedButton(
                          text: "Loading",
                          color: Colors.pink.shade600),
                    ButtonState.fail:
                      IconedButton(
                          text: "Failed",
                          icon: const Icon(Icons.cancel,color: Colors.white),
                          color: Colors.red.shade300),
                    ButtonState.success:
                      IconedButton(
                          text: "Success",
                          icon: const Icon(Icons.check_circle,color: Colors.white,),
                          color: Colors.green.shade400)
                    }, 
                    onPressed: onSave,
                    state: x,
                  ),
                ),
              ],
            ), 
          ),
        ),
      ),
    );
  }
}