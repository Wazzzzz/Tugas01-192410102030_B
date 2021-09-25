import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List <String> listPemain = [
    'Amelia Shintya', 'Ahmad Putera Aditya Sanjaya Haikal', 'Andhika Setya', 'Muhammad Alif', 'Olivia Cantika', 'Raditya Iskandar', 'Ujang Maulana'
  ];
  List <String> listKlub = [
    'Amelia88@gmail.com', 'Anwar11@gmail.com', 'Dika99@gmail.com', 'Sanjaya00@gmail.com', 'Olivia16@gmail.com' ,'Raditya07@gmail.com', 'ujang04@gmail.com'
  ];
  List <String> listPosisi = [
    '0813 4648 1214', '0812 5657 2178', '0857 3647 1518', '0895 3115 4648', '0812 4547 3217', '0813 04798 3645', '0896 0654 7814'
  ];
  List listGambar = [
    'images/1.png', 'images/2.png', 'images/3.png', 'images/4.png', 'images/6.png' ,'images/5.png', 'images/7.png'
  ];
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Kontak'),
          centerTitle: true,
        ),
        body: ListView( 
          children:[ 
            for (int i=0;i<listPemain.length;i++)
            Container(
          width: double.infinity,
          padding:EdgeInsets.all(10) ,
          margin: EdgeInsets.all(5),
          height: 100,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]
          ),
          child: Row(
            children: [
              Image.asset(listGambar[i], width: 70,),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 100,
                  height: 50,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(listPemain[i]),
                      Text(listKlub[i]),
                      Text(listPosisi[i]),
                      // Row(
                      //   children: [
                      //     for(int i=0;i<5;i++)
                      //     Icon(Icons.star, color: Colors.yellow,)
                      //   ],
                      // )
                    ],
                  ),
                ),
                )
            ],
          ),
        ),
          ]
        ),

      ),
    );
  }
}
