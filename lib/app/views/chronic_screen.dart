import 'package:flutter/material.dart';
import 'package:sa3edney/app/config/context_helpers.dart';
import 'package:sa3edney/app/views/pressure_screen.dart';
import 'package:sa3edney/app/views/sara3_screen.dart';
import 'package:sa3edney/app/views/sugar_screen.dart';
import 'package:sa3edney/generated/assets.dart';

class ChronicScreen extends StatelessWidget {
  const ChronicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 56),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SugarScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      Asset.sugar,
                      width: context.width * 0.25,
                      height: context.height * 0.1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PressureScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      Asset.pressure,
                      width: context.width * 0.25,
                      height: context.height * 0.1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Sara3Screen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      Asset.sara3,
                      width: context.width * 0.25,
                      height: context.height * 0.1,
                    ),
                  ),
                ),
              ],
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
            Positioned.directional(
              textDirection: TextDirection.rtl,
              start: 24,
              bottom: 48,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Asset.backChronic,
                  width: context.width * 0.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
