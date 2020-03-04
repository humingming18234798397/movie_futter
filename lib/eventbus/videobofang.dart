

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    title: "视频播放",

    home: VideoBoFang(),
  ));
}

class VideoBoFang extends StatefulWidget{
  @override
  _VideoAppState createState() => new _VideoAppState();
}

class _VideoAppState extends State<VideoBoFang> {
  //视频播放控制器
  VideoPlayerController _controller;
  //布尔类型 是否开始播放
  bool _isPlaying = false;
  //视频地址
  String url = 'http://mobile.bwstudent.com/video/movie/sndn/sndn1.mp4';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(this.url)
    // 播放状态
    //添加监听
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() { _isPlaying = isPlaying; });
        }
      })
    // 在初始化完成后必须更新界面
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: new Scaffold(
        body: new Center(
          child: _controller.value.initialized
          // 加载成功
              ? new AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ) : new Container(),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _controller.value.isPlaying
              ? _controller.pause
              : _controller.play,
          child: new Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}