import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  _contentBox({
    String title,
    String subtitle,
    String content,
    TextAlign textAlign,
    CrossAxisAlignment crossAxisAlignment
  }) {
    return Column(
      crossAxisAlignment:crossAxisAlignment,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFFA5652),
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          subtitle,
          style: TextStyle(
            color: Color(0xFF035755),
            fontWeight: FontWeight.bold,
            fontSize: 30.0
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            height: 2.0
          ),
          textAlign: textAlign,
        )
      ],
    );
  }

  _navbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset('assets/imgs/logo.png'),
        Row(
          children: <Widget>[
            Text(
              'Overview',
              style: TextStyle(
                color: Color(0xFFFB4C47),
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 40.0),
            Text(
              'Contagion',
              style: TextStyle(
                color: Color(0xFF035755)
              ),
            ),
            SizedBox(width: 40.0),
            Text(
              'Prevention',
              style: TextStyle(
                color: Color(0xFF035755)
              ),
            ),
            SizedBox(width: 40.0),
            Container(
              height: 35.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Contact',
                  style: TextStyle(
                    color: Color(0xFFFB4C47)
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Color(0xFFFB4C47),
                  width: 1.5
                )
              ),
            ),
          ],
        )
        
      ],
    );
  }

  _header() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFBF2F2), Color(0xFFFFFFFF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0]
        )
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          _navbar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 250.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _contentBox(
                      title: 'COVID-19 Alert',
                      subtitle: 'Stay At Home Quarantine \nTo Stop Corona Virus',
                      content: 'There Is No Specific Medicine To Prevent Or Trent Coronavirus.\nDisease (COVID-19) People Way Need Supportive Care To',
                      textAlign: TextAlign.start,
                      crossAxisAlignment: CrossAxisAlignment.start
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: 45.0,
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFb4C47),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Center(
                        child: Text(
                          'Let Us Help',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/imgs/main_img.png',
                height: 700.0,
              )
            ],
          )
        ],
      ),
    );
  }

  _infoSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/imgs/virus.png',
          height: 700.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _contentBox(
              textAlign: TextAlign.start,
              title: 'What is COVID-19?',
              subtitle: 'Coronavirus',
              content: 'Corona Viruses Are A Type Of Virus. There Are Many Differente Kinds, And\n'+
                'Some Cause Disease. A Newly Identified Type Has Caused A Recent\n'+
                'Outbreak Of Respiratory Illness Now Called COVID-19. Lauren Sauer, M.S.,\n'+
                'The Director Of Operations With The Johns Hopkins Office Of Critical Event\n'+
                'Preparedness And Response',
              crossAxisAlignment: CrossAxisAlignment.start
            ),
            SizedBox(height: 30.0),
            Container(
              height: 45.0,
              width: 140.0,
              decoration: BoxDecoration(
                color: Color(0xFFFEE6E5),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Center(
                child: Text(
                  'Learn More',
                  style: TextStyle(
                    color: Color(0xFFFA5652),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  _card({
    String image,
    String title,
    String content
  }) {
    return Card(
      elevation: 15.0,
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/imgs/$image.png'),
            SizedBox(height: 40.0),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF035755),
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              )
            ),
            SizedBox(height: 10.0),
            Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                height: 2.0
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  _cardSection(){
    return Column(
      children: <Widget>[
        _contentBox(
          title: 'What is COVID-19?',
          subtitle: 'Coronavirus',
          content: 'Corona Viruses Are A Type Of Virus. There Are Many Different Kinds, And\n'+
          'Some Cause Disease. A Newly Identified Type\n',
          textAlign: TextAlign.center,
          crossAxisAlignment: CrossAxisAlignment.center
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _card(
              image: 'air_transmission',
              content: 'Objectively Evolve Tactical Expertise Before\n'+
                      'Extensible Initiatives. Efficiently Simplify\n',
              title: 'Air Transmission'
            ),
            _card(
              image: 'hands',
              content: 'Objectively Evolve Tactical Expertise Before\n'+
                      'Extensible Initiatives. Efficiently Simplify\n',
              title: 'Human Contacts'
            ),
            _card(
              image: 'objects',
              content: 'Objectively Evolve Tactical Expertise Before\n'+
                      'Extensible Initiatives. Efficiently Simplify\n',
              title: 'Contained Objects'
            ),
          ],
        )
      ],
    );
  }

  _symptompsSection() {
    return Column(
      children: <Widget>[
        _contentBox(
          title: 'Covid-19',
          subtitle: 'Symptomps',
          content: 'Corona Viruses Are A Type Of Virus. There Are Many Different Kinds, And Some Cause Disease.\n'+
                    'A Newly Identified Type Has Caused A Recent Outbreak Of Respiratory\n',
          textAlign: TextAlign.center,
          crossAxisAlignment: CrossAxisAlignment.center
        ),
        Image.asset('assets/imgs/symptomps.png', height: 650.0)
      ],
    );
  }

  _rowLTR({
    String number,
    String title,
    String content,
    String girl
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/imgs/$number.png'),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF035755),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    content,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      height: 2.0
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Image.asset('assets/imgs/$girl.png')
      ],
    );
  }

  _rowRTL({
    String number,
    String title,
    String content,
    String girl
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/imgs/$girl.png'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/imgs/$number.png'),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF035755),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    content,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      height: 2.0
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        
      ],
    );
  }

  _setpsSection() {
    return Column(
      children: <Widget>[
        _contentBox(
          title: 'Covid-19',
          subtitle: 'What Should We Do',
          content: 'Corona Viruses Are A Type Of Virus. There Are Many Different Kinds, And Some Cause\n'+
          'Disease. A Newly Identified Type Has Caused\n',
          textAlign: TextAlign.center,
          crossAxisAlignment: CrossAxisAlignment.center
        ),
        _rowLTR(
          number: 'one',
          title: 'Wear Masks',
          content: 'Continually seize impactful vortals rather than future-proof\n'+ 
          'supply chains. Uniquely exploit emerging niches via fully tested\n'+ 
          'meta-services. Competently pursue standards compliant\n'+
          'leadership skills vis-a-vis pandemic "outside the box" thinking.\n'+
          'Objectively',
          girl: 'girl1'
        ),
        _rowRTL(
          number: 'two',
          content: 'Continually seize impactful vortals rather than future-proof\n'+ 
          'supply chains. Uniquely exploit emerging niches via fully tested\n'+ 
          'meta-services. Competently pursue standards compliant\n'+
          'leadership skills vis-a-vis pandemic "outside the box" thinking.\n'+
          'Objectively',
          title: 'Wash Your Hands',
          girl: 'girl2'
        ),
        _rowLTR(
          number: 'three',
          title: 'Use Nose - Rag',
          content: 'Continually seize impactful vortals rather than future-proof\n'+ 
          'supply chains. Uniquely exploit emerging niches via fully tested\n'+ 
          'meta-services. Competently pursue standards compliant\n'+
          'leadership skills vis-a-vis pandemic "outside the box" thinking.\n'+
          'Objectively',
          girl: 'girl3'
        ),
        _rowRTL(
          number: 'four',
          content: 'Continually seize impactful vortals rather than future-proof\n'+ 
          'supply chains. Uniquely exploit emerging niches via fully tested\n'+ 
          'meta-services. Competently pursue standards compliant\n'+
          'leadership skills vis-a-vis pandemic "outside the box" thinking.\n'+
          'Objectively',
          title: 'Avoid Contacts',
          girl: 'girl4'
        ),
      ],
    );
  }

  _formSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Have Question in mind?\nLet us help you',
          style: TextStyle(
            color: Color(0xFF035755),
            fontWeight: FontWeight.bold,
            fontSize: 40.0
          ),
        ),
        SizedBox(height: 30.0),
        Container(
          width: 500.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF9F4F3),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'snmonydemo@gmail.com',
                style: TextStyle(
                  color: Colors.black45
                ),
              ),
              Container(
                width: 140.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFB4C47),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Center(
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  _footer() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/imgs/logo.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Overview',
                  style: TextStyle(
                    color: Color(0xFF035755)
                  ),
                ),
                SizedBox(width: 40.0),
                Text(
                  'Contagion',
                  style: TextStyle(
                    color: Color(0xFF035755)
                  ),
                ),
                SizedBox(width: 40.0),
                Text(
                  'Prevention',
                  style: TextStyle(
                    color: Color(0xFF035755)
                  ),
                ),
                SizedBox(width: 40.0),
                Text(
                  'Contact',
                  style: TextStyle(
                    color: Color(0xFF035755)
                  ),
                ),
                SizedBox(width: 40.0),
              ],
            ),
            Image.asset('assets/imgs/socialnt.png')
          ],
        ),
        SizedBox(height: 40.0),
        Text(
          '2020 @ All rights reserved by pixelspark.co',
          style: TextStyle(
            color: Colors.black45
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _header(),
              SizedBox(height: 30.0),
              _infoSection(),
              SizedBox(height: 30.0),
              _cardSection(),
              SizedBox(height: 30.0),
              _symptompsSection(),
              SizedBox(height: 30.0),
              _setpsSection(),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/imgs/map.png', height: 500.0),
                  Image.asset('assets/imgs/reports.png', height: 500.0)
                ],
              ),
              SizedBox(height: 30.0),
              _formSection(),
              SizedBox(height: 30.0),
              _footer(),
              SizedBox(height: 20 .0),
            ],
          ),
        )
      ),
    );
  }
}