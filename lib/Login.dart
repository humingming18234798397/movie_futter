import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_futter/Register.dart';
import 'package:movie_futter/api/apis.dart';
import 'package:movie_futter/mains.dart';
import 'package:http/http.dart' as client;
import 'dart:convert'; //使用 json 解析


void main() => runApp(Login_Widget());

class Login_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldAndCheckPage(),
    );
  }
}

class TextFieldAndCheckPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFieldAndCheckPageState();
}

class TextFieldAndCheckPageState extends State<TextFieldAndCheckPage> {
  List list;

  get_Data(String phone, String pwd) async {
    client
        .post(Apis.HOME_LOGIN)
        .then((client.Response response) {
      var data = json.decode(response.body);
      data = data["result"];
      //打印请求的结果
      print(data);
      //更新数据
      setState(() {
        list = data;
      });
    });
  }

  //手机号的控制器
  TextEditingController phoneController = TextEditingController();

  //密码的控制器
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141931),
      body: Column(
        children: <Widget>[
          Image.asset('images/beijing.png',
            width: double.infinity,
          ),
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0), hintText: '请输入邮箱',hintStyle: TextStyle(color: Colors.white70)),
            autofocus: false,
          ),
          TextField(
              controller: passController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0), hintText: '请输入密码',hintStyle: TextStyle(color: Colors.white70)),
              obscureText: true),
          TextWidget(),
          Container(
            width: 350,
            height: 40,
            child:  RaisedButton(
              color: Colors.red,
              onPressed: _login,
              child: Text('登录',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TextsWidget,
          Container(
            width: 350,
            height: 40,
            child: RaisedButton(
              // onPressed: _login,
              color: Colors.green,
              child: Text('微信',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  void _login() {
    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('手机号码格式不对'),
              ));
    } else if (passController.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('请填写密码'),
              ));
    } else {
      get_Data(phoneController.text, passController.text);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('登录成功'),
              ));
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeActivity()));
      phoneController.clear();
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }
}

class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 10,bottom: 20),
        child:GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("暂无账号,立即注册",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
          onTap: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Register_Widget()));
          },
        )

    );
  }

}

Widget TextsWidget = new Container(
  margin: EdgeInsets.only(top: 30,bottom: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("—————— 或 ——————",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      )
    ],
  ),
);
