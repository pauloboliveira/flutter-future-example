import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showMoney = true;

  var horaAtual = new TimeOfDay.now();

  var periodo;

  @override
  Widget build(BuildContext context) {
    if (horaAtual.hour >= 0 && horaAtual.hour < 12) {
      periodo = 'Bom dia';
    } else if (horaAtual.hour > 12 && horaAtual.hour < 18) {
      periodo = 'Boa tarde';
    } else {
      periodo = 'Boa noite';
    }

    return Container(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          Row(
            children: <Widget>[
              Text(
                '$periodo, ',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                'Paulo!',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 50),
          Container(
            height: 200,
            width: 300,
            child: Card(
              elevation: 15,
              color: Colors.indigoAccent,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Seu saldo: ',
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showMoney = !showMoney;
                            });
                          },
                          child: Icon(
                            showMoney
                                ? OMIcons.visibility
                                : OMIcons.visibilityOff,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'R\$',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        showMoney
                            ? Text.rich(
                                TextSpan(text: '200,00'),
                                style: GoogleFonts.roboto(
                                    fontSize: 30, color: Colors.white),
                              )
                            : Icon(
                                OMIcons.moreHoriz,
                                color: Colors.white,
                                size: 30,
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
