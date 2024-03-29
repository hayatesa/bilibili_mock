import 'package:flutter/material.dart';

class StaticPageRoute extends PageRouteBuilder {
  final Widget widget;
  final RouteSettings settings;

  StaticPageRoute(this.settings, this.widget)
      : super(
          settings: settings,
          // 设置过度时间
          // transitionDuration: Duration(seconds: 0),
          // 构造器
          pageBuilder: (
            // 上下文和动画
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          // transitionsBuilder: (
          //   BuildContext context,
          //   Animation<double> animation,
          //   Animation<double> secondaryAnimation,
          //   Widget child,
          // ) {
          //   return FadeTransition(
          //     opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          //         parent: animation,
          //         curve: Curves.fastOutSlowIn,
          //       )),
          //       child: child,
          //     );
          // 需要什么效果把注释打开就行了
          // 渐变效果
          // return FadeTransition(
          //   // 从0开始到1
          //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          //     // 传入设置的动画
          //     parent: animation,
          //     // 设置效果，快进漫出   这里有很多内置的效果
          //     curve: Curves.fastOutSlowIn,
          //   )),
          //   child: child,
          // );

          // 缩放动画效果
          // return ScaleTransition(
          //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
          //     parent: animation,
          //     curve: Curves.fastOutSlowIn
          //   )),
          //   child: child,
          // );

          // 旋转加缩放动画效果
          // return RotationTransition(
          //   turns: Tween(begin: 0.0,end: 1.0)
          //   .animate(CurvedAnimation(
          //     parent: animation,
          //     curve: Curves.fastOutSlowIn,
          //   )),
          //   child: ScaleTransition(
          //     scale: Tween(begin: 0.0,end: 1.0)
          //     .animate(CurvedAnimation(
          //       parent: animation,
          //       curve: Curves.fastOutSlowIn
          //     )),
          //     child: child,
          //   ),
          // );

          // 左右滑动动画效果
          // return SlideTransition(
          //   position: Tween<Offset>(
          //     // 设置滑动的 X , Y 轴
          //     begin: Offset(-1.0, 0.0),
          //     end: Offset(0.0,0.0)
          //   ).animate(CurvedAnimation(
          //     parent: animation,
          //     curve: Curves.fastOutSlowIn
          //   )),
          //   child: child,
          // );
          // }
        );
}

class LeftSlidePageRoute extends PageRouteBuilder {
  final Widget widget;
  final RouteSettings settings;

  LeftSlidePageRoute(this.settings, this.widget)
      : super(
            settings: settings,
            // 设置过度时间
            transitionDuration: Duration(milliseconds: 400),
            // 构造器
            pageBuilder: (
              // 上下文和动画
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return widget;
            },
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              // 左右滑动动画效果
              return SlideTransition(
                position: Tween<Offset>(
                        // 设置滑动的 X , Y 轴
                        begin: Offset(1.0, 0.0),
                        end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
