import 'package:flutter/material.dart';
import 'datatable.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String valueChoose;
  List listItem = ['Categories', 'Addon Items', 'Quantity', 'Type'];
  List<Data> datas;
  @override
  void initState() {
    datas = Data.getData();
    super.initState();
  }

  DataTable dataBody() {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            "Name",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          numeric: false,
        ),
        DataColumn(
          label: Text(
            "Color",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          numeric: false,
        ),
        DataColumn(
          label: Text(
            "Thumbnail",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          numeric: false,
        ),
        DataColumn(
          label: Text(
            "Total Item",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          numeric: false,
        ),
        DataColumn(
          label: Text(
            "Action",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          numeric: false,
        )
      ],
      rows: datas
          .map(
            (datas) => DataRow(cells: [
              DataCell(Text(datas.name)),
              DataCell(Container(
                height: 20,
                width: 20,
                color: Colors.black,
              )),
              DataCell(Image.asset(
                "assets/food/burger.png",
                width: 35,
                height: 35,
              )),
              DataCell(Text(datas.totalitem.toString())),
              DataCell(Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                  )
                ],
              )),
            ]),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //// Dash board Container Starting
            Container(
              color: Colors.grey[200],
              width: 150,
              height: 600,
            ),

            //
            SizedBox(width: 30.0),

            //
            ///
            ///
            ///
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            width: 401,
                            height: 35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Search...'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(Icons.search),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 30.0),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 35,
                              width: 150,
                              color: Colors.grey[300],
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.5),
                                    child: Icon(
                                      Icons.menu,
                                      size: 9.2,
                                    ),
                                  ),
                                  SizedBox(width: 5.36),
                                  Text(
                                    'Showing 4 enteries',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Container(
                              height: 35,
                              width: 35,
                              color: Colors.grey[300],
                              child: FlatButton(
                                child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: FlatButton(
                              height: 35,
                              color: Colors.green[200],
                              child: Text(
                                ' + Add New',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 250,
                    width: 727,
                    color: Colors.white,

                    ///
                    ///
                    ///
                    ///
                    ///
                    child: dataBody(),

                    ///
                    ///
                    ///
                    ///
                    ///
                    ///
                    ///
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
