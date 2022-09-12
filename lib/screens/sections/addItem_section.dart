import 'package:flutter/material.dart';

class AddItemSection extends StatefulWidget {
  const AddItemSection({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AddItemSection> createState() => _AddItemSectionState();
}

class _AddItemSectionState extends State<AddItemSection> {
  int _counter = 0;
  int selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['images/png/sample_item1.png','images/png/sample_item2.jpg','images/png/sample_item3.jpg'];
    final List<int> colorCodes = <int>[600, 500, 100];

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10)
            )
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){

              },
              child: Icon(Icons.notifications_none),
            ),),

        ],

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: ListView.separated(itemCount: colorCodes.length,itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  color: Colors.orange.shade200,

                  child:Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(





                            child: Center(
                                child:Image(image: AssetImage(entries[index]),height: 100,width: 200,)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('Other Data')
                    ],
                  ),
                ),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10,),)
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
