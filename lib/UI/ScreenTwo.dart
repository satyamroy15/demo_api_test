import 'dart:math';

import 'package:demo_api_test/Network/APIFunctions.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  var h, w;
  String itemName = '';
  String itemDes = '';
  String itemLink = '';
  String itemCategory = '';
  var testList = ['a', 'z'];
  var testVar;

  APICall apiCaller = APICall();

  List<String> dataList = [];
  List<String> dataListTwo = [];
  List<String> dataListThree = [];
  List<String> dataListFour = [];

  void callTestList() async {
    var start = await apiCaller.getTestList();
    for (int i = 0; i < start.entries!.length - 895; i++) {
      // log("Entry no.$i  >>  ${temp.entries![i].aPI}\n");
      dataList.add("${start.entries![i].aPI}");
      dataListTwo.add("${start.entries![i].description}");
      dataListThree.add("${start.entries![i].link}");
      dataListFour.add("${start.entries![i].category}");
      setState(() {});
    }

    // this.itemName = dataList[3] ;
    // this.itemDes = dataListTwo[3];
    // this.itemLink = dataListThree[3];
    // this.itemCategory = dataListFour[3];

    // log('$itemName');
    // log('$itemDes');

    //   for (int i = 0; i < dataList.length; i++) {
    //     log('item no --> $i ---- item name: ${temp.entries![i].aPI} ---- '
    //         'of '
    //         'total items = ${dataList.length}\n');
    //   }
  }

  randomize() {
    final _random = new Random();

    var itemNameRan = dataList[_random.nextInt(dataList.length)];
    itemName = itemNameRan;
    var itemDesRan = dataListTwo[_random.nextInt(dataList.length)];
    itemDes = itemDesRan;
    var itemLinkRan = dataListThree[_random.nextInt(dataList.length)];
    itemLink = itemLinkRan;
    var itemCatRan = dataListFour[_random.nextInt(dataList.length)];
    itemCategory = itemCatRan;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callTestList();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    this.testList = dataList;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: h * 0.6,
          width: w,
          child: ListView(
              padding: EdgeInsets.only(
                left: w * 0.08,
                right: w * 0.08,
              ),
              children: [
                Center(
                  child: Text(
                    'API Test Demo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 3.0,
                        backgroundColor: Colors.yellowAccent),
                  ),
                ),
                SizedBox(
                  height: 88,
                ),
                Text(
                  itemName.isEmpty
                      ? "Item Name: " + 'Loading from API..'
                      : "Item Name: " + itemName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  itemDes.isEmpty
                      ? 'Item Description: ' + 'Loading..'
                      : 'Item '
                              'Description: ' +
                          itemDes,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  itemLink.isEmpty
                      ? 'Item Link: ' + 'Loading from API..'
                      : 'I'
                              'tem '
                              'Link: ' +
                          itemLink,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  itemCategory.isEmpty
                      ? 'Item Category: ' + 'Waiting for network'
                      : 'It'
                              'em Category: ' +
                          itemCategory,
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Container(
                      width: w,
                      height: h * 0.06,
                      child: DropdownButton(
                        items: testList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text("Categories"),
                        isExpanded: true,
                        value: testVar,
                        icon: Icon(Icons.keyboard_arrow_down),
                        onChanged: (value) {
                          testVar = value;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: h * 0.05,
                      width: w * 0.30,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Center(
                        child: InkWell(
                          child: Text(
                            'Randomize',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          splashColor: Colors.blue,
                          onTap: randomize,
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    ));
  }

//   random2() {
//     final _random = new Random();
//
//     var itemNameRan = dataList[_random.nextInt(dataList.length)];
//     itemName = itemNameRan;
//     var itemDesRan = dataListTwo[_random.nextInt(dataList.length)];
//     itemDes = itemDesRan;
//     var itemLinkRan = dataListThree[_random.nextInt(dataList.length)];
//     itemLink = itemLinkRan;
//     var itemCatRan = dataListFour[_random.nextInt(dataList.length)];
//     itemCategory = itemCatRan;
//   }
// }

// abstract class UIComp {
//   callTestList();
//   log($itemName);
//   // this.dataList= dataListw;
//   // void comp(String itemName, String itemDes, String itemLink, String itemCat) {
//   //   for (int i = 0; i < dataList.length - 897; i++) {
//   //
//   //     }
//   //}
// }

}
