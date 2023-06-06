import 'package:flutter/material.dart';
import 'package:sa3edney/app/config/context_helpers.dart';
import 'package:sa3edney/app/views/bleed_screen.dart';
import 'package:sa3edney/app/views/choke_screen.dart';
import 'package:sa3edney/app/views/chronic_screen.dart';
import 'package:sa3edney/app/views/faint_screen.dart';
import 'package:sa3edney/app/views/gro7_screen.dart';
import 'package:sa3edney/generated/assets.dart';

import 'burns_screen.dart';
import 'fracture_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 56),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const BleedScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          Asset.nazef,
                          width: context.width * 0.4,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const WoundsScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          Asset.gro7,
                          width: context.width * 0.4,
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const FractureScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          Asset.kosor,
                          width: context.width * 0.4,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const FaintScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          Asset.eghmaa,
                          width: context.width * 0.4,
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const BurnsScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          Asset.burns,
                          width: context.width * 0.4,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ChokeScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          Asset.ekhtinak,
                          width: context.width * 0.4,
                        ),
                      ),
                      const Spacer(),
                      const Spacer(),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ChronicScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      Asset.amrad,
                      width: context.width * 0.4,
                    ),
                  ),
                ),
              ],
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              top: context.height * 0.185,
              end: context.width * 0.2,
              start: context.width * 0.2,
              child: Image.asset(
                Asset.mainTitle,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              top: 24,
              end: 16,
              child: Image.asset(
                Asset.ministryLogo,
                width: 85,
                height: 85,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              top: 0,
              start: 0,
              child: Image.asset(
                Asset.topCorner,
                width: context.width,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              end: 0,
              bottom: 0,
              child: Image.asset(
                Asset.bottomCorner,
                width: context.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
