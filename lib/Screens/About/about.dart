

import 'package:iMusic/CustomWidgets/copy_clipboard.dart';
import 'package:iMusic/CustomWidgets/gradient_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String? appVersion;

  @override
  void initState() {
    main();
    super.initState();
  }

  Future<void> main() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width / 2,
            top: MediaQuery.of(context).size.width / 5,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/apple-logo.png',
                ),
              ),
            ),
          ),
          const GradientContainer(
            child: null,
            opacity: true,
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? Colors.transparent
                  : Theme.of(context).colorScheme.secondary,
              elevation: 0,
              title: Text(
              'iMusic',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  
                  
                  children: [
                    
                    
                    const SizedBox(
                      
                      height: 20,
                    ),
                    Card(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: const SizedBox(
                        width: 150,
                        child:
                            Image(image: AssetImage('assets/apple-logo.png')),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      
'iMusic',
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('v$appVersion'),
                  ],
                ),

                Column(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        primary: Colors.transparent,
                      ),
                      onPressed: () {

                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: const Image(
                          image: AssetImage('assets/black-button.png'),
                        ),
                      ),
                    ),



                  ],
                ),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
