import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailAcara extends StatefulWidget {
  const DetailAcara({super.key});

  @override
  State<DetailAcara> createState() => _DetailAcaraState();
}

class _DetailAcaraState extends State<DetailAcara> {
  bool isRegistered = false;
  void regiterEvent() {
    setState(() {
      isRegistered = true;
    });
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: SingleChildScrollView(
            child: Column(
              children: const [
                Icon(
                  Icons.done,
                  size: 100,
                ),
                Text('Berhasil Mendaftar')
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'OK',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.apply(color: Colors.blueAccent),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                regiterEvent();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://images.unsplash.com/photo-1511285560929-80b456fea0bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80';

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Acara'),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        color: Theme.of(context).scaffoldBackgroundColor,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          onPressed: () {
            _showMyDialog();
          },
          child: Text('Ikuti Kegiatan'),
        ),
      ),
      body: Padding(
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: ListView(
          children: [
            Container(
              height: 155,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 0.0,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    isRegistered
                        ? Text(
                            'Anda Sudah Mendaftar',
                            style: TextStyle(color: Colors.orangeAccent),
                          )
                        : SizedBox(),
                    Text(
                      'Webinar',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Zoom', style: Theme.of(context).textTheme.subtitle2)
                  ],
                ),
                InkWell(
                  child: Icon(Icons.share),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.'),
            SizedBox(
              height: 8,
            ),
            detailKegiatan(),
            SizedBox(
              height: 8,
            ),
            deskripsi(context),
            SizedBox(
              height: 8,
            ),
            notes(context),
          ],
        ),
      ),
    );
  }

  Column notes(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Notes', style: Theme.of(context).textTheme.subtitle2),
        SizedBox(
          height: 4,
        ),
        Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.')
      ],
    );
  }

  Column deskripsi(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Descriptions', style: Theme.of(context).textTheme.subtitle2),
        SizedBox(
          height: 4,
        ),
        Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.')
      ],
    );
  }

  Container detailKegiatan() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffD9D9D9),
      ),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.people),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Kapasitas'), Text('25/50')],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.smartphone),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Jenis Kegiatan'), Text('Online')],
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.airplane_ticket),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Harga Tiket'), Text('Gratis')],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.calendar_month),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('15 Agustus 2022'), Text('19:00 - 21.30')],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
