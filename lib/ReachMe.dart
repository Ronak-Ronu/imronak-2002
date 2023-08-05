import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:redirect_icon/redirect_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReachMe extends StatefulWidget {
  const ReachMe({super.key});

  @override
  State<ReachMe> createState() => _ReachMeState();
}

class _ReachMeState extends State<ReachMe> {
  int _stepcount = 0;
  void next() {
    if (_stepcount < 3) {
      setState(
        () {
          _stepcount++;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 220, 222, 234),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 130,
                child: ImageStepper(
                  activeStepBorderWidth: 2,
                  direction: Axis.vertical,
                  stepRadius: 33,
                  lineDotRadius: 2,
                  lineLength: 66,
                  enableNextPreviousButtons: false,
                  stepReachedAnimationDuration: const Duration(seconds: 1),
                  images: const [
                    AssetImage('images/mail.png'),
                    AssetImage('images/Instagram.png'),
                    AssetImage('images/Linkedin.png'),
                    AssetImage('images/Github.png'),
                  ],
                  enableStepTapping: true,
                  activeStep: _stepcount,
                  onStepReached: (index) {
                    setState(() {
                      _stepcount = index;
                    });
                  },
                ),
              ),
            ),
            Visibility(
              visible: _stepcount == 0,
              child: Container(
                width: 310,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Color.fromARGB(255, 233, 239, 244),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 170, 168, 168),
                      offset: Offset(8, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const RedirectSocialIcon(
                      url:
                          'mailto:ronakronu02@gmail.com?subject=Your%20Subject&body=Your%20email%20body%20here',
                      icon: FontAwesomeIcons.link,
                      size: 24,
                      radius: 24,
                      iconColor: Colors.blue,
                      circleAvatarColor: Color.fromARGB(255, 233, 239, 244),
                    ),
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(
                                text: 'ronakronu02@gmail.com'))
                            .then((_) => ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text(
                                  'Mail Id Copied to  clipboard !',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontFamily:
                                        GoogleFonts.righteous().fontFamily,
                                  ),
                                ))));
                      },
                      child: Text(
                        'ronakronu02@gmail.com',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.righteous().fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _stepcount == 1,
              child: Container(
                width: 310,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Color.fromARGB(255, 233, 239, 244),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 170, 168, 168),
                      offset: Offset(8, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const RedirectSocialIcon(
                      url: 'https://www.instagram.com/ronak._.2002/',
                      icon: FontAwesomeIcons.instagram,
                      size: 24,
                      radius: 24,
                      iconColor: Colors.blue,
                      circleAvatarColor: Color.fromARGB(255, 233, 239, 244),
                    ),
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(
                                text:
                                    'https://www.instagram.com/ronak._.2002/'))
                            .then((_) => ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text(
                                  'Insta Link Copied to  clipboard !',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontFamily:
                                        GoogleFonts.righteous().fontFamily,
                                  ),
                                ))));
                      },
                      child: Text(
                        'ronak._.2002',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.righteous().fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _stepcount == 2,
              child: Container(
                width: 310,
                // width: MediaQuery.of(context).size.width * 0.55,

                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Color.fromARGB(255, 233, 239, 244),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 170, 168, 168),
                      offset: Offset(8, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const RedirectSocialIcon(
                      url: 'https://www.linkedin.com/in/ronak-suthar-2532a4202',
                      icon: FontAwesomeIcons.linkedin,
                      size: 24,
                      radius: 24,
                      iconColor: Colors.blue,
                      circleAvatarColor: Color.fromARGB(255, 233, 239, 244),
                    ),
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(
                                text:
                                    'https://www.linkedin.com/in/ronak-suthar-2532a4202'))
                            .then((_) => ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text(
                                  'LinkedIn Copied to  clipboard !',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontFamily:
                                        GoogleFonts.righteous().fontFamily,
                                  ),
                                ))));
                      },
                      child: Text(
                        'Ronak suthar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.righteous().fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: _stepcount == 3,
              child: Container(
                width: 310,
                // width: MediaQuery.of(context).size.width * 0.55,

                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Color.fromARGB(255, 233, 239, 244),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 170, 168, 168),
                      offset: Offset(8, 6),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const RedirectSocialIcon(
                      url: 'https://github.com/Ronak-Ronu',
                      icon: FontAwesomeIcons.github,
                      size: 24,
                      radius: 24,
                      iconColor: Colors.blue,
                      circleAvatarColor: Color.fromARGB(255, 233, 239, 244),
                    ),
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(
                                text: 'https://github.com/Ronak-Ronu'))
                            .then((_) => ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text(
                                  'Github Link Copied to  clipboard !',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontFamily:
                                        GoogleFonts.righteous().fontFamily,
                                  ),
                                ))));
                      },
                      child: Text(
                        'Ronak_suthar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.righteous().fontFamily,
                        ),
                      ),
                    ),
                    // Ink(
                    //   child: IconButton.filledTonal(
                    //     color: Color.fromARGB(255, 70, 126, 171),
                    //     iconSize: 30,
                    //     onPressed: () {
                    //       if (_stepcount == 3) {
                    //         setState(() {
                    //           _stepcount = 0;
                    //         });
                    //       }
                    //     },
                    //     icon: const Icon(Icons.next_plan),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
