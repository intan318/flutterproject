import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // utk mengetahui ukuran panjang dan lebar layar
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;
    // mengetahui ukuran dari batas bawah layarnya dan AppBar-nya kemudian, kurangkan nilai height layar kita dengan batas bawah tersebut dan ukuran AppBar-nya.
    final double appBarHeight = kToolbarHeight;
    final double paddingBottom = mediaQueryData.padding.bottom;
    paddingBottom - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid View",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen / heightScreen,
          children: <Widget>[
            Container(
              color: Colors.yellowAccent,
              height: 500.0,
              child: Center(
                  child: Image.asset(
                'assets/logo.png',
                height: 100,
                width: 100,
              )),
            ),
            Container(
              color: Colors.greenAccent,
              height: 500.0,
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Container(
              color: Colors.brown,
              height: 500.0,
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              height: 500.0,
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
