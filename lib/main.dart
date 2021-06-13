import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      //  color: Colors.green, // цвет контейнера
      child: Text('World',
          style: TextStyle(
              fontSize: 40, color: Colors.blueGrey)), // текст контейнера
      // width: 300,  //ширина
      width: double.infinity, //ширина по всему периметру
      height: 350, //высота
      alignment: Alignment.center, //выравнивание дочернего элемента по центру
      //alignment: Alignment(-1, -1) //выравнивание текста СЛЕВА вверху
      // alignment: Alignment.topLeft, // АНАЛОГ выравнивание текста СЛЕВА вверху
      padding:
          EdgeInsets.all(50), //Отступ в пикселях со всех сторон одновременно
      //  padding: EdgeInsets.only(left:40,top: 20, right: 40, bottom: 20), // =БОЛЕЕ ТОЧНЫЙ= АНАЛОГ ОТСТУПА В ПИКСЕЛЯХ СО ВСЕХ СТОРОН
      // padding: EdgeInsets.symmetric(horizontal: 40,vertical:20), //аналог ОТСТУПА В ПИКСЕЛЯХ упрещенный=если лефт боттом и райч одинаковые то можно упростить
      // margin: EdgeInsets.all(60), // боковое(внешний отступ )
      // transform: Matrix4.rotationZ(0.1), // поворот контейнера

      // decoration: BoxDecoration(
      // gradient: LinearGradient
      // (colors: [Colors.red,Colors.cyan])),   // фоновое оформление контейнера

      decoration: BoxDecoration(
          // color: Colors.green, // цвет виджета
          image: DecorationImage(
              image: Image.network(
                      'https://www.freepngimg.com/thumb/universe/64209-planet-images-google-vector-yellow-download-hq-png.png')
                  .image,
              fit: BoxFit.cover),

          //  borderRadius: BorderRadius.circular(15),  //не открые углы в квадрате(сглаженные)
          // border: Border.all(color: Colors.black, width: 8,) //создать Рамку для виджета

          shape: BoxShape.circle, //сделать виджет круглым

          boxShadow: [
            BoxShadow(
                //сделать тень с параметрами
                color: Colors.blueGrey, // цвет тени
                offset: Offset(5, 15), // смещение тени от рамки
                blurRadius: 10, // размытие
                spreadRadius:
                    5 // величина на которую должен быть увеличен наш контейнер перед размытием
                )
          ]),
    ));
  }
}




//ghjdthrf s