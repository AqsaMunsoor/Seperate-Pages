import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';

import 'package:tiny_time/courses/learning.dart';
import 'package:tiny_time/courses/memory.dart';
import 'package:google_fonts/google_fonts.dart';

import '../courses/draw.dart';
import '../courses/puzzle.dart';
import '../course_components/quiz/quiz.dart';
import '../courses/story.dart';
import 'package:audioplayers/audioplayers.dart';
import '../methods/auth_methods.dart';
import 'package:lottie/lottie.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back5.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: BouncingInkWell(
                    onPressed: () {},
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      width: 55,
                      height: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/share.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: BouncingInkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: (() {
                      click.play(AssetSource('click.mp3'));
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Logout"),
                            content:
                                const Text("Are you sure you want to logout?"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  SystemNavigator.pop();
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Yes'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('No'),
                              ),
                            ],
                          );
                        },
                      );
                    }),
                    child: Container(
                        width: 55,
                        height: 40,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/close.png'),
                                fit: BoxFit.cover))),
                  ),
                ),

                // IconButton(
                //     onPressed: () async {
                //       await AuthMethods().signOut();
                //     },
                //     icon: const Icon(Icons.logout_rounded))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pick a Category',
                  style: GoogleFonts.hennyPenny(
                      color: Colors.blue,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: GridView.count(
                  // physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 3.5,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 100,
                  children: [
                    BouncingActionChip(
                      onPressed: () {
                        click.play(AssetSource('click.mp3'));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Learning()),
                        );
                      },
                      backgroundColor: Colors.greenAccent.shade200,
                      elevation: 3,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/puzzle.png",
                          //   height: 60,
                          // ),
                          const SizedBox(height: 8),
                          Text(
                            'Learning',
                            style: GoogleFonts.mouseMemoirs(
                                color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                    BouncingActionChip(
                      onPressed: () {
                        click.play(AssetSource('click.mp3'));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Drawing()),
                        );
                      },
                      backgroundColor: const Color(0xFF9343D4),
                      elevation: 3,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/puzzle.png",
                          //   height: 60,
                          // ),
                          const SizedBox(height: 8),
                          Text(
                            'Draw',
                            style: GoogleFonts.mouseMemoirs(
                                color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                    BouncingActionChip(
                      onPressed: () {
                        click.play(AssetSource('click.mp3'));
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Puzzle()),
                        // );
                      },
                      backgroundColor: const Color(0xFF5DDEE8),
                      elevation: 3,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/puzzle.png",
                          //   height: 60,
                          // ),
                          const SizedBox(height: 8),
                          Text(
                            'Puzzles',
                            style: GoogleFonts.mouseMemoirs(
                                color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),

                    // ActionChip(
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => Quiz()),
                    //     );
                    //   },
                    //   backgroundColor: Colors.pinkAccent[200],
                    //   elevation: 3,
                    //   label: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       // Image.asset(
                    //       //   "assets/puzzle.png",
                    //       //   height: 60,
                    //       // ),
                    //       const SizedBox(height: 8),
                    //       Text(
                    //         'Quiz',
                    //         style: GoogleFonts.mouseMemoirs(
                    //             color: Colors.white, fontSize: 32),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    BouncingActionChip(
                      onPressed: () {
                        click.play(AssetSource('click.mp3'));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Story()),
                        );
                      },
                      backgroundColor: const Color(0xFFFF585D),
                      elevation: 3,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/puzzle.png",
                          //   height: 60,
                          // ),
                          const SizedBox(height: 8),
                          Text(
                            'Stories',
                            style: GoogleFonts.mouseMemoirs(
                                color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                    BouncingActionChip(
                      onPressed: () {
                        click.play(AssetSource('click.mp3'));
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Memory()),
                        // );
                      },
                      backgroundColor: Colors.amber,
                      elevation: 3,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Image.asset(
                          //   "assets/puzzle.png",
                          //   height: 60,
                          // ),
                          const SizedBox(height: 8),
                          Text(
                            'Memory',
                            style: GoogleFonts.mouseMemoirs(
                                color: Colors.white, fontSize: 32),
                          ),
                        ],
                      ),
                    ),
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

AudioPlayer click = AudioPlayer();

class BouncingActionChip extends StatefulWidget {
  final Widget label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double elevation;

  const BouncingActionChip({
    required this.label,
    required this.onPressed,
    this.backgroundColor = Colors.grey,
    this.elevation = 2.0,
  });

  @override
  _BouncingActionChipState createState() => _BouncingActionChipState();
}

class _BouncingActionChipState extends State<BouncingActionChip>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    _animation = Tween<double>(begin: 1.0, end: 0.9).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.onPressed,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => Transform.scale(
          scale: _animation.value,
          child: ActionChip(
            onPressed: widget.onPressed,
            backgroundColor: widget.backgroundColor,
            elevation: widget.elevation,
            label: widget.label,
          ),
        ),
      ),
    );
  }
}

class BouncingInkWell extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color splashColor;
  final Color highlightColor;

  const BouncingInkWell({
    required this.child,
    required this.onPressed,
    this.splashColor = Colors.grey,
    this.highlightColor = Colors.transparent,
  });

  @override
  _BouncingInkWellState createState() => _BouncingInkWellState();
}

class _BouncingInkWellState extends State<BouncingInkWell>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    _animation = Tween<double>(begin: 1.0, end: 0.9).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.onPressed,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => Transform.scale(
          scale: _animation.value,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: widget.splashColor,
              highlightColor: widget.highlightColor,
              onTap: widget.onPressed,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
