// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously, non_constant_identifier_names

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kobo/core.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

//网页跳转
Future<void> _launchInBrowser(Uri url) async {
  html.window.location.href = url.toString();
}

class IndexScreen extends StatefulWidget {
  @override
  State<IndexScreen> createState() => IndexScreenState();
}

class IndexScreenState extends State<IndexScreen> {
  String url =
      "https://gw.alipayobjects.com/mdn/rms_48b4e9/afts/img/A*dML_Qqo8YKoAAAAAAAAAAAAAARQnAQ";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 55,
            color: const Color.fromARGB(255, 46, 46, 46),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  height: 40,
                  child: Image.asset("assets/fixtitle-min.png"),
                ),
                Expanded(child: SizedBox()),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "开户",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "登录",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
                GestureDetector(
                    child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "客服",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
                GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.menu_outlined,
                          color: Colors.white,
                          size: 30,
                        )))
              ],
            ),
          ),
          Expanded(
              child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView(
              children: [
                Container(
                  height: 250,
                  color: Colors.amber,
                  child: Image.network(
                    url,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "公司简介",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(200, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  child: Text(
                    "        蚂蚁金融服务集团（以下称“蚂蚁金服”）起步于2004年成立的支付宝。2013年3月，支付宝的母公司宣布将以其为主体筹建小微金融服务集团（以下称“小微金服”），小微金融（筹）成为蚂蚁金服的前身。2014年10月，蚂蚁金服正式成立。蚂蚁金服以“让信用等于财富”为愿景，致力于打造开放的生态系统，通过“互联网推进器计划”助力金融机构和合作伙伴加速迈向“互联网+”，为小微企业和个人消费者提供普惠金融服务。依靠移动互联、大数据、云计算为基础，为中国践行普惠金融的重要实践。",
                    style: TextStyle(height: 2.2, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "产品一览",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(197, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 35, 50, 30),
                  child: Image.network(
                      "https://gw.alipayobjects.com/mdn/rms_48b4e9/afts/img/A*4KYTTLtKufQAAAAAAAAAAAAAARQnAQ"),
                ),
                Text(
                  "花呗",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10)
                          ]),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 50,
                            child: Image.asset("assets/11.png"),
                          ),
                          Text(
                            "蚂蚁消金",
                            style: TextStyle(fontSize: 12, height: 1.5),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10)
                          ]),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 50,
                            child: Image.asset("assets/22.png"),
                          ),
                          Text(
                            "余额宝",
                            style: TextStyle(fontSize: 12, height: 1.5),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10)
                          ]),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 50,
                            child: Image.asset("assets/33.png"),
                          ),
                          Text(
                            "余利宝",
                            style: TextStyle(fontSize: 12, height: 1.5),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 35, 50, 30),
                  child: Image.network(
                      "https://gw.alipayobjects.com/mdn/rms_48b4e9/afts/img/A*WMX3Q4-Q2NMAAAAAAAAAAAAAARQnAQ"),
                ),
                Text(
                  "借呗",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 33, 117, 243),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.money,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "随借随还",
                            style: TextStyle(fontSize: 12, height: 3),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 33, 117, 243),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.fast_forward,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "快速到账",
                            style: TextStyle(fontSize: 12, height: 3),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 33, 117, 243),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.date_range,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "按日计息",
                            style: TextStyle(fontSize: 12, height: 3),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  height: 250,
                  color: Color.fromARGB(255, 42, 42, 42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "联系我们",
                        style: TextStyle(
                            height: 2,
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "客服（投诉）热线：95188-2（工作时间：8:00-24:00）",
                        style: TextStyle(
                            height: 3,
                            color: Color.fromARGB(255, 162, 162, 162),
                            fontSize: 13,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "联系地址：中国杭州市余杭区文一西路969号",
                        style: TextStyle(
                            height: 3,
                            color: Color.fromARGB(255, 162, 162, 162),
                            fontSize: 13,
                            fontWeight: FontWeight.w100),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                            child: Image.network(
                                "https://gw.alipayobjects.com/mdn/rms_48b4e9/afts/img/A*F5HoSYkZja4AAAAAAAAAAAAAARQnAQ"),
                          ),
                          Text(
                            "渝公网备案 50010802004446号",
                            style: TextStyle(
                                height: 2,
                                color: Color.fromARGB(255, 125, 125, 125),
                                fontSize: 10,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Text(
                        "渝ICP备2021007681号-1",
                        style: TextStyle(
                            height: 2,
                            color: Color.fromARGB(255, 125, 125, 125),
                            fontSize: 10,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "Copyright © 2020-至今蚂蚁消金",
                        style: TextStyle(
                            height: 2,
                            color: Color.fromARGB(255, 125, 125, 125),
                            fontSize: 10,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool checkboxstate = false;
  Future<void> _login() async {
    final url = "http://49.235.106.67:5001/api/login/";
    final data = {
      "username": _usernameController.text,
      "password": _passwordController.text,
    };

    try {
      Response response = await Dio().post(
        url,
        data: jsonEncode(data),
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.toString());
        if (responseData['status'] == 'success') {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('恭喜'),
                content: Text('登录成功。${responseData['token']}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('确定'),
                  ),
                ],
              );
            },
          );
          _launchInBrowser(Uri.parse(
              'http://49.235.106.67:5001/home/?token=${responseData['token']}'));
          // 登录成功，你可以在这里处理token
          //print('登录成功。Token: ${responseData['token']}');
          // 导航到下一个屏幕或执行其他操作
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('提示'),
                content: Text('登录失败。${responseData['message']}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('确定'),
                  ),
                ],
              );
            },
          );
          // 处理其他响应状态（例如，无效的凭据）
        }
      } else {
        // 处理错误（例如，服务器问题）
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('错误'),
              content: Text('登录失败。${response.statusMessage}'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('确定'),
                ),
              ],
            );
          },
        );
        //print('错误: ${response.statusMessage}');
      }
    } catch (error) {
      // 捕获其他异常
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('错误'),
            content: Text('登录失败。$error'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('确定'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Transform.translate(
            offset: Offset(0, -450),
            child: FractionallySizedBox(
              widthFactor: 2,
              heightFactor: 1,
              alignment: Alignment.topCenter,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 71, 119, 219),
                    borderRadius: BorderRadius.circular(400)),
              ),
            )),
        Column(
          children: [
            Text(
              "登录",
              style: TextStyle(color: Colors.white, fontSize: 17, height: 3),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black54,
                    )),
                  ),
                  TextField(
                    obscuringCharacter: "●",
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black54,
                    )),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: checkboxstate,
                          onChanged: (value) {
                            setState(() {
                              checkboxstate = !checkboxstate;
                            });
                          }),
                      Text(
                        "记住账号和密码，下次快速登录",
                        style: TextStyle(
                            color: Colors.black38, fontSize: 12, height: 3),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          _login();
                        },
                        child: Text("登录")),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        child: Text("注册账户")),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure_1 = true;
  bool _isObscure_2 = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _register() async {
    // 校验账号和密码
    String username = _usernameController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    //账号格式校验
    if (!RegExp(r'^[0-9]{8,10}$').hasMatch(username)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('账号格式错误'),
            content: Text('账号必须为8~10位数字'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('确定'),
              ),
            ],
          );
        },
      );
      return;
    }
    //密码一致性校验
    if (password != confirmPassword) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('密码不一致'),
            content: Text('两次输入的密码必须相同'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('确定'),
              ),
            ],
          );
        },
      );
      return;
    }
    //密码格式校验
    if (RegExp(r'[\u4e00-\u9fa5]|[\W_]').hasMatch(password)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('密码不符合规范'),
            content: Text('密码不能包含汉字和特殊字符'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('确定'),
              ),
            ],
          );
        },
      );
      return;
    }

    // 调用注册接口发送请求
    String url = 'http://49.235.106.67:5001/api/register/';
    Map<String, dynamic> data = {
      'username': username,
      'password': password,
    };
    //print(username);
    // 发送注册请求的代码...
    try {
      Response response = await Dio().post(url, data: data);
      //print(response.data);
      if (response.statusCode == 200) {
        if (response.data["status"] == "success") {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('注册成功'),
                content: Text('您已成功注册账号'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // 跳转到其他页面或进行其他操作
                    },
                    child: Text('确定'),
                  ),
                ],
              );
            },
          );
          _launchInBrowser(Uri.parse(
              'http://49.235.106.67:5001/home/?token=${response.data["token"]}'));
        } else if (response.data["status"] == "error") {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('注册失败'),
                content: Text('账号已存在'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('确定'),
                  ),
                ],
              );
            },
          );
        }
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('注册失败'),
              content: Text('注册请求失败，请稍后重试'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('确定'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      //print('请求出错: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Transform.translate(
            offset: Offset(0, -450),
            child: FractionallySizedBox(
              widthFactor: 2,
              heightFactor: 1,
              alignment: Alignment.topCenter,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 71, 119, 219),
                    borderRadius: BorderRadius.circular(400)),
              ),
            )),
        Column(
          children: [
            Text(
              "注册",
              style: TextStyle(color: Colors.white, fontSize: 17, height: 3),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        hintText: "输入账户",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black54,
                        )),
                  ),
                  TextField(
                    obscuringCharacter: "●",
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: "输入密码",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        )),
                  ),
                  TextField(
                    obscuringCharacter: "●",
                    obscureText: true,
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                        hintText: "确认密码",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          _register();
                        },
                        child: Text("注册&登录")),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("返回登录")),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
