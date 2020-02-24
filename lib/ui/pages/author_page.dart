import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/common/component_index.dart';

class AuthorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ComModel> list = new List();
    list.add(new ComModel(typeId: 0));
    list.add(new ComModel(
        title: "Github", url: "https://github.com/MarsDemon", extra: "Go Follow"
    ));
    list.add(new ComModel(
        title: "简书",
        url: "https://github.com/MarsDemon",
        extra: "+关注"
    ));
    list.add(new ComModel(
        title: "掘金",
        url: "https://github.com/MarsDemon",
        extra: "+关注"
    ));
    list.add(new ComModel(
        title: "我的 Flutter 开源库集合",
        url: "https://github.com/MarsDemon"
    ));
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('作者'),
        centerTitle: true,
      ),
      body: new ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            ComModel model = list[index];
            if (model.typeId == 0) {
              return new Container(
                child: new Material(
                  color: Colors.white,
                  child: new ListTile(
                    onTap: () {},
                    title: new Text(
                      '您的 支持就是我最大的动力',
                      style: new TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                decoration: Decorations.bottom,
              );
            }
            return new ComArrowItem(model);
          }),
    );
  }
}