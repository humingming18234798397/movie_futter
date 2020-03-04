import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

void main() =>runApp( MaterialApp(
  home: VideoPlayerPage(),
));

class VideoPlayerPage extends StatefulWidget {
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;
  //布尔类型 是否开始播放
  bool _isPlaying = false;
  @override
  void initState() {
    super.initState();
    //配置视频地址
    videoPlayerController = VideoPlayerController.network(
        'http://mobile.bwstudent.com/video/movie/sndn/sndn1.mp4')
// 播放状态
    //添加监听
    ..addListener(() {
    final bool isPlaying = videoPlayerController.value.isPlaying;
    if (isPlaying != _isPlaying) {
    setState(() { _isPlaying = isPlaying; });
    }
    })
    // 在初始化完成后必须更新界面
    ..initialize().then((_) {
    setState(() {});
    });
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 9 / 4, //宽高比
      autoPlay: _isPlaying, //自动播放
      looping: true, //循环播放
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("视频播放器")),
      body: Center(
        //视频播放器
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    /**
     * 当页面销毁的时候，将视频播放器也销毁
     * 否则，当页面销毁后会继续播放视频！
     */
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}