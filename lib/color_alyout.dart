import 'package:flutter/material.dart';

const _CELL_PADDING = 10.0;

class _FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 80, color: Colors.red);
  }
}

class _SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
              child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(color: Colors.blue),
          )),
          Container(
            width: _CELL_PADDING,
          ),
          Expanded(
              child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.yellow,
                )),
                Expanded(
                    child: Container(
                  color: Colors.purple,
                )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.blue[400],
            height: 100,
          )),
          Expanded(
              child: Container(
            color: Colors.green[400],
            height: 100,
          )),
          Expanded(
              child: Container(
            color: Colors.yellow[400],
            height: 100,
          )),
          Expanded(
              child: Container(
            color: Colors.pink[400],
            height: 100,
          )),
        ],
      ),
    );
  }
}

class _AdjustableBlock extends StatelessWidget {
  final double widthFactor;

  _AdjustableBlock(this.widthFactor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: widthFactor,
              child: Container(
                color: Colors.red,
                height: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO implement build
    return Center(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(25),
      color: Colors.grey[300],
      child: Column(
        children: [
          _FirstRow(),
          _SecondRow(),
          _ThirdRow(),
          _AdjustableBlock(1.0),
          _AdjustableBlock(0.75),
          _AdjustableBlock(0.5)
        ],
      ),
    ));
  }
}
