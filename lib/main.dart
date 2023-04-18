import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit/weather_cubit.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/services/weather_service.dart';

void main() {
  runApp(BlocProvider(
      create: (context) {
        return WeatherCubit(weatherService: WeatherService());
      },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {


  WeatherApp({Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: new ThemeData(
      //   primarySwatch:
      //       BlocProvider.of<WeatherCubit>(context).weatherModel == null ? color : BlocProvider.of<WeatherCubit>(context).weatherModel!.getThemeColor(),
      // ),
      home: HomePage(),

    );
    if(color == null ){

    }
  }
  static MaterialColor? color;
}
