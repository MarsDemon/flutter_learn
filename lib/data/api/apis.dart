
class WanAndroidApi {
  /// 首页banner http://wwww.wanandroid.com/banner/json
  static const String BANNER = "banner";

  /// 最新项目 tab （首页的第二个tab）
  static const String ARTICLE_LISTPROJECT = "article/listproject";

  /// 项目分类
  static const String PROJECT_TREE = "project/tree";

  /// 项目列表数据
  static const String PROJECT_LIST = "project/tree";

  /// 体系数据
  static const String TREE = "tree";

  /// 首页文章列表
  /// 知识体系下的文章
  static const String ARTICLE_LIST = "article/list";

  /// 获取公众号列表
  static const String WXARTICLE_CHAPTERS = "wxarticle/chapters";

  /// 查看某个公众号历史数据
  static const String WXRTICLE_LIST = "wxarticle/list";

  /// 注册
  static const String user_register = "user/register";

  /// 登录
  static const String user_login = "user/login";

  /// 退出
  static const String user_logout = "user/logout";

  /// 收藏文章列表
  static const String lg_collect_list = "lg/collect/list";

  /// 收藏站内文章
  static const String lg_collect = "lg/collect";

  /// 取消收藏
  static const String lg_uncollect_originid = "lg/uncollect_originId";

  static String getPath({String path: '', int page, String resType: 'json'}) {
    StringBuffer sb = new StringBuffer(path);
    if (page != null) {
      sb.write('/$page');
    }
    if (resType != null && resType.isNotEmpty) {
      sb.write('/$resType');
    }
    return sb.toString();
  }
}