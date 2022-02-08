import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

String _currentSubject = "";
String _number = "";

List<double> _heightIndex = [
  34, 45, 33.5, 44, 37, 42, 47, 22, 52
];


setCurSub(String _sub) {
  _currentSubject = _sub;
}



Widget BoxWidget =
  Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFF2f3a4b),
    ),
    child: Text(_currentSubject),
  );





Widget NumberWidget = new
  Container(child: _numbWidget(),);

class _numbWidget extends StatefulWidget {
  const _numbWidget({Key? key}) : super(key: key);

   @override
   _numbWidgetState createState() => _numbWidgetState();


}

class _numbWidgetState extends State<_numbWidget> {
  int _count = 0;

  incCount(){
    _count += 1;
  }

  @override
  Widget build(BuildContext context) {
    incCount();
    return new SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: new Text(_count.toString())), height: 34));
  }
}

      //   SizedBox(child:
      //     Container(child:
      //       Align(alignment:
      //         Alignment(0, 0), child:
      //           Text( _count.toString())
      //       ),
      //       height: _heightIndex[_count - 1]
      //   ),
      // );



