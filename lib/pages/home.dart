import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: "Allah Names".text.make(),
        centerTitle: true,
      ),
      body: Scaffold(
        body: Container(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('data/name.json'),
            builder: (context, snapshot) {
              // decode Json
              var item = json.decode(snapshot.data.toString());
              // print(item);
              return ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 20),
                // separatorBuilder: (context, index) => Divider(),
                itemCount: item == null ? 0 : item.length,
                itemBuilder: (BuildContext context, index) {
                  return VStack(
                    [
                      ExpansionTile(
                        key: Key(index.toString()),
                        leading: CircleAvatar(
                          child: Text(item[index]['id']),
                        ),
                        title: Text(
                          item[index]['enName'],
                          style: TextStyle(
                            fontSize: 22,
                            color: Vx.black,
                          ),
                        ),
                        subtitle: Text(
                          item[index]['arName'],
                          style: TextStyle(
                            color: Vx.black,
                            fontSize: 18,
                          ),
                        ),
                        childrenPadding: Vx.mLTRB(20, 10, 10, 10),
                        expandedAlignment: Alignment.topLeft,
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item[index]["arName"],
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Meaning :",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            item[index]["meaning"],
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Explanation :",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            item[index]["explanation"],
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Benefit :",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            item[index]["benefit"],
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
