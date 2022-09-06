import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try1/detail_acara.dart';

class CardAcara extends StatelessWidget {
  const CardAcara({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://images.unsplash.com/photo-1511285560929-80b456fea0bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80';

    return InkWell(
      onTap: () {
        Get.to(DetailAcara());
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 3.0,
                offset: Offset(1, 3),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 155,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 0.0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Webinar',
              //           style: Theme.of(context).textTheme.headline6,
              //         ),
              //         Text('Zoom',
              //             style: Theme.of(context).textTheme.labelMedium),
              //         Text('Senin, 20 September 2022 ',
              //             style: Theme.of(context).textTheme.subtitle2),
              //         Text('Gratis',
              //             style: Theme.of(context).textTheme.subtitle2)
              //       ],
              //     ),
              //     InkWell(
              //       child: Icon(Icons.share),
              //       onTap: () {
              //         _showMyDialog();
              //         // Get.defaultDialog(
              //         //     title: '',
              //         //     content: Column(
              //         //       children: [
              //         //         Icon(
              //         //           Icons.done,
              //         //           size: 100,
              //         //         ),
              //         //         Text('Berhasil Mendaftar')
              //         //       ],
              //         //     ),
              //         //     confirm: ElevatedButton(
              //         //       onPressed: () {
              //         //         Get.back();
              //         //       },
              //         //       child: Text('OK'),
              //         //     ));
              //       },
              //     )
              //   ],
              // ),

              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                title: Text(
                  'Webinar',
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Zoom', style: Theme.of(context).textTheme.bodyText2),
                    Text('Senin, 20 September 2022 ',
                        style: Theme.of(context).textTheme.subtitle1),
                    Text('Gratis',
                        style: Theme.of(context).textTheme.subtitle2?.apply(color: Colors.green))
                  ],
                ),
                trailing: InkWell(
                  child: Icon(Icons.share),
                  onTap: () {
                  
                    // Get.defaultDialog(
                    //     title: '',
                    //     content: Column(
                    //       children: [
                    //         Icon(
                    //           Icons.done,
                    //           size: 100,
                    //         ),
                    //         Text('Berhasil Mendaftar')
                    //       ],
                    //     ),
                    //     confirm: ElevatedButton(
                    //       onPressed: () {
                    //         Get.back();
                    //       },
                    //       child: Text('OK'),
                    //     ));
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
