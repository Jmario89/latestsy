import 'package:flutter/material.dart';

import 'menu.dart';

class Noticias extends StatelessWidget {
  const Noticias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange),
        backgroundColor: Colors.white,
        title: new Center(
            ),
        actions: [
          // ignore: deprecated_member_use
          new FlatButton(
            child: Container(
                padding: EdgeInsets.all(5.0),
                width: 60,
                height: 60,
                child:
                    Icon(Icons.settings, color: Colors.deepOrange, size: 35)),
            onPressed: () {
              Navigator.pushNamed(context, 'configuracion');
            },
          ),
        ],
      ),
      drawer: MenuLateral(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 25.0),
              Center(
                child: Text(
                  '''Ultimas noticias''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0.875,
                    fontSize: 36.0,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 217, 73, 40),

                    /* letterSpacing: 0.0, */
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: 295.0,
                height: 165,
                child: Column(
                  children: [
                    Text(
                      '2 hours ago                                                                              ',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 0.875,
                        fontSize: 15.0,
                        fontFamily: 'DM Sans',
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Google material desingn two                                                                             ',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 0.875,
                        fontSize: 20.0,
                        fontFamily: 'DM Sans',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'looks promising                                                                             ',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 0.875,
                        fontSize: 20.0,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'The top app bar disappears upon scrolling up, and appears upon scrolling down.',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 0.875,
                        fontSize: 20.0,
                        fontFamily: 'DM Sans',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: 295.0,
                height: 165.0,
                child: Column(
                  children: [
                    Text(
                      '3 hours ago                                                                              ',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 0.875,
                        fontSize: 15.0,
                        fontFamily: 'DM Sans',
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Setproduct predicting 2048                                                                             ',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 0.875,
                        fontSize: 20.0,
                        fontFamily: 'DM Sans',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'design trends                                                                             ',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 0.875,
                        fontSize: 20.0,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'The top app bar disappears upon scrolling up, and appears upon scrolling down.',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        height: 0.875,
                        fontSize: 20.0,
                        fontFamily: 'DM Sans',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),           
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
