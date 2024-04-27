// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_flutter/logic/bloc/languages_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Languages'),
          centerTitle: true,
        ),
        body: BlocBuilder<LanguagesBloc, LanguagesState>(
          builder: (context, state) {
            return Center(
              child: SizedBox(
                height: 550,
                child: Card(
                  margin: const EdgeInsets.all(50),
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<LanguagesBloc>().add(
                                      const ChangeLanguagesEvent(
                                          Languages.Italy),
                                    );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'images/italy.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(Languages.Italy.name),
                                      if (state.selectedLanguage ==
                                          Languages.Italy)
                                        const Icon(Icons.done)
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<LanguagesBloc>().add(
                                      const ChangeLanguagesEvent(
                                          Languages.Irish),
                                    );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'images/irish.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(Languages.Irish.name),
                                      if (state.selectedLanguage ==
                                          Languages.Irish)
                                        const Icon(Icons.done)
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<LanguagesBloc>().add(
                                      const ChangeLanguagesEvent(
                                          Languages.Germany),
                                    );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'images/german.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(Languages.Germany.name),
                                      if (state.selectedLanguage ==
                                          Languages.Germany)
                                        const Icon(Icons.done)
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<LanguagesBloc>().add(
                                      const ChangeLanguagesEvent(
                                          Languages.France),
                                    );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'images/french.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(Languages.France.name),
                                      if (state.selectedLanguage ==
                                          Languages.France)
                                        const Icon(Icons.done)
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<LanguagesBloc>().add(
                                      const ChangeLanguagesEvent(
                                          Languages.Dutch),
                                    );
                              },
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'images/dutch.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                      Text(Languages.Dutch.name),
                                      if (state.selectedLanguage ==
                                          Languages.Dutch)
                                        const Icon(Icons.done)
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
