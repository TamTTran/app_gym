import 'package:app_gym/screen/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/home_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutte Gym')),
      body: _buildBody(),
    );
  }

  BlocProvider<HomeBloc> _buildBody() {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: BlocConsumer<HomeBloc, HomeState>(
          buildWhen: (_, current) => current is ReloadImage,
          builder: (context, state) {
            return const HomeContent();
          },
          listenWhen: (_, current) => true,
          listener: (context, state) {},
        ));
  }
}
