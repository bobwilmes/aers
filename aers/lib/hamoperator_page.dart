import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HamOperatorPage extends StatefulWidget {
  static String tag = 'hamoperator-page';
  @override
  _HamOperatorState createState() => new _HamOperatorState();
}

class _HamOperatorState extends StatelessWidget {
  const HamOperatorState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          buttonColor: Colors.purple,
          buttonTheme: const ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
          )),
      home: const HamOperatorPage(),
    );
  }
}

class HamOperator {
  const HamOperator(
      {this.callsign = '',
      this.name = '',
      this.description = '',
      this.section = 0,
      this.imageUrl = ''});
  final String callsign;
  final String name;
  final String description;
  final int section;
  final String imageUrl;
}

final String server =
    defaultTargetPlatform == TargetPlatform.android ? "localhost" : "localhost";

final List<HamOperator> _HamOperators = <HamOperator>[
  HamOperator(
      callsign: 'WD0BFO',
      name: 'Tom Huber',
      description:
          'Amateur Extra Class, Volunteer Examiner,HF ICOM-7300,UHF Kenwood',
      section: 11,
      imageUrl: 'hamoperators/WD0BFO.jpg'),
  HamOperator(
      callsign: 'KA0RG',
      name: 'Ron Gaspard',
      description: 'Amateur Technician Class, QRP and 2-meter Handy Talkie',
      section: 2,
      imageUrl: 'hamoperators/KA0RG.jpg'),
  HamOperator(
      callsign: 'WD0DBW',
      name: 'Derek Winstein',
      description: 'Amateur General Class, 10 meter HF, AMSAT',
      section: 3,
      imageUrl: 'hamoperators/W0DBW.jpg'),
  HamOperator(
      callsign: 'N0HWJ',
      name: 'Don Lallier',
      description: 'Amateur General Class, Digital Modes DSTAR, FT8',
      section: 4,
      imageUrl: 'hamoperators/N0HWJ.jpg'),
  HamOperator(
      callsign: 'AG0LF',
      name: 'Bob Wilmes',
      description: 'Amateur General Class, Digital Modes DSTAR, FT8',
      section: 4,
      imageUrl: 'hamoperators/AG0LF.jpg')
];

class HamOperatorPage extends StatelessWidget {
  const HamOperatorPage({Key? key}) : super(key: key);

  Widget _dialogBuilder(BuildContext context, HamOperator HamOperator) {
    ThemeData localTheme = Theme.of(context);

    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Image.asset(
          HamOperator.imageUrl,
          fit: BoxFit.fill,
        ),
        //       Image.network(
        //         HamOperator.imageUrl,
        //         fit: BoxFit.fill,
        //       ),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    HamOperator.callsign,
                    style: localTheme.textTheme.headline6,
                  ),
                  Text(
                    HamOperator.name,
                    style: localTheme.textTheme.headline6,
                  ),
                  Text('ARRL Section: ${HamOperator.section}'),
                  SizedBox(height: 16.0),
                  Text(
                    HamOperator.description,
                    style: localTheme.textTheme.bodyText1,
                  ),
                  SizedBox(height: 16.0),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Wrap(children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('On the NET'),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: const Text('AVAILABLE'),
                        )
                      ]))
                ]))
      ],
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (context) => _dialogBuilder(context, _HamOperators[index])),
      child: Container(
        padding: const EdgeInsets.only(left: 22.0),
        alignment: Alignment.centerLeft,
        child: Text(_HamOperators[index].name,
            style: Theme.of(context).textTheme.headline6),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Ham Operators'),
      ),
      body: ListView.builder(
        itemCount: _HamOperators.length,
        itemExtent: 60.0,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}
