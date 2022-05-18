import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {

  const _novaPaginaDados({Key? key}) : super(key:key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {

  int dado1 = 1, dado2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: (){
              setState((){
                if (dado1<= 5) {
                  dado1++;
                }
                else {
                  dado1 = 1;
                }
              });
            },
            child: Image.asset('images/dado${dado1}.png'),
          ),
          ),
          Expanded(child: FlatButton(
            onPressed: (){
              setState((){
                if (dado2<= 5) {
                  dado2++;
                }
                else {
                  dado2 = 1;
                }
              });
            },
            child: Image.asset('images/dado${dado2}.png'),
          ),
          ),
        ],
      ),
    );
  }
}

