import 'package:flutter/material.dart';

void main() {
  //app 구동 함수 - MyApp() : main Page로 구동 시작
  runApp(const MyApp());
}

//main page class
class MyApp extends StatelessWidget {
  //생성자
  const MyApp({super.key});

  /*
   * 디자인을 위한 위젯 세팅 메서드
   * 기본적으로 build를 오버라이딩
   * 위젯은 대문자로 시작하고 flutter 는 위젯을 넣어서 디자인을 구성하는 형식의 프레임워크
   * 대표 위젯 구성 : 글자 위젯, 이미지 위젯, 아이콘 위젯, 박스 위젯
   */
  @override
  Widget build(BuildContext context) {
    //MaterialApp : 구글이 제공하는 유용한 위젯 테마를 사용해서 사용 - cf. iphone도 따로 있음 - 나는 MAterialApp 사용하면됨
    return MaterialApp(
      //home: Text('hello world')
      //home: Icon(Icons.star)
      //img : assets 폴더에 img 삽입 → pubspec.yaml 설정파일에 이미지 등록
      //home: Image.asset('assets/couple.jpeg')
      // home: Center(
      //   child: Container( width: 50, height: 50, color: Colors.red,) // 단위는 lp,
      // )
      //상중하로 나뉘주는 위젯
      home : Scaffold (
        //상
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          title: Text('hello world'),
        ),

        //중
        body: 
        /*Row( //Column : 세로 정렬
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //display flex 와 유사 : 가로 축 정렬 Row 기준
          crossAxisAlignment: CrossAxisAlignment.center, // 세로 축 정렬 Row 기준 - 기준 점이 필요함 Container 로 감싸서 계산
          children: const [
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),*/
        /*Text('안녕'),*/
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity, height: 150,
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black)
            ),
            child: Text('data'),
          ),
        ),

        //하
        bottomNavigationBar: BottomAppBar(
            child: SizedBox ( //ContainerBox보다 가벼움
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                        ],
                      ),
            )),
      )
    );

  }
}
