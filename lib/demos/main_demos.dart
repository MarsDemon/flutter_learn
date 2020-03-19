import 'package:flutter/material.dart';
import 'package:flutter_wanandroid/common/component_index.dart';
import 'package:flutter_wanandroid/demos/city_select_page.dart';
import 'package:flutter_wanandroid/demos/date_page.dart';
import 'package:flutter_wanandroid/demos/image_size_page.dart';
import 'package:flutter_wanandroid/demos/money_page.dart';
import 'package:flutter_wanandroid/demos/pinyin_page.dart';
import 'package:flutter_wanandroid/demos/regex_page.dart';
import 'package:flutter_wanandroid/demos/round_portrait_page.dart';
import 'package:flutter_wanandroid/demos/timeline_page.dart';
import 'package:flutter_wanandroid/demos/timer_page.dart';
import 'package:flutter_wanandroid/demos/widget_page.dart';

class ItemModel {
  String title;
  Widget page;

  ItemModel(this.title, this.page);
}

class MainDemosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainDemosPageState();
  }
}

class MainDemosPageState extends State<MainDemosPage> {
  List<ItemModel> mItemList = new List();

  @override
  void initState() {
    super.initState();

    mItemList.add(new ItemModel("Github[common_utils]", null));
    mItemList.add(new ItemModel("汉字转拼音", new PinyinPage("汉字转拼音")));
    mItemList.add(new ItemModel("城市列表", new CitySelectPage("City select")));
    mItemList.add(new ItemModel("Date Util", new DatePage("Date Util")));
    mItemList.add(new ItemModel("Regex Util", new RegexUtilPage("Regex Util")));
    mItemList.add(new ItemModel("Widget Util", new WidgetPage("Widget Util")));
    mItemList.add(new ItemModel("Timer Util", new TimerPage("Timer Util")));
    mItemList.add(new ItemModel("Money Util", new MoneyPage("Money Util")));
    mItemList.add(
        new ItemModel("Timeline Util", new TimelinePage("Timeline Util")));
    mItemList.add(new ItemModel("圆形/圆角头像", new RoundPortraitPage('圆角、圆形头像')));
    mItemList.add(new ItemModel("获取图片尺寸", new ImageSizePage("获取图片尺寸")));
  }

  Widget buildItem(ItemModel model) {
    return new InkWell(
        onTap: () {
          if (model.page == null) {
            NavigatorUtil.pushWeb(context,
                url: "https://github.com/FuchsiaOS/FuchsiaOS-docs-zh_CN/blob/master/development/api/c.md",
                title: "Github [common_utils]"
            );
          } else {
            NavigatorUtil.pushPage(context, model.page, pageName: model.title);
          }
        },
        child: new Container(
            height: 50.0,
            child: new Center(
              child: new Text(
                model.title,
                style: new TextStyle(fontSize: 14.0, color: Color(0xFF666666)),
              ),
            ),
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
        color: Colors.white,
        border: new Border.all(width: 0.33, color: Color(0XFFEFEFEF))
    ),)
    ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Demos"),
        centerTitle: true,
      ),
      body: new ListView.builder(
        itemCount: mItemList.length,
        itemBuilder: (BuildContext context, int index) {
          ItemModel model = mItemList[index];
          return buildItem(model);
        },
      ),
    );
  }
}