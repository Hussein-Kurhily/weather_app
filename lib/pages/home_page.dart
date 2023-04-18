import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';
import '../cubit/weather_cubit/weather_cubit.dart';
import '../widget/default_home_page.dart';
import '../widget/success_widget.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar : AppBar(
         backgroundColor: BlocProvider.of<WeatherCubit>(context).weatherModel == null ? Colors.blue: BlocProvider.of<WeatherCubit>(context).weatherModel!.getThemeColor(),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
              icon: Icon(Icons.search),
            ),
          ],
          title: Text('Weather App'),
        ),
        body: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
          if (state is WeatherLoading) {
            return const Center(
                child: CircularProgressIndicator());
          }
          else if (state is WeatherFailure) {
            return Center(
              child: Text('something went rong please try again !!!'),
            );
          }
          else if (state is WeatherSuccess) {

            return SuccessGetWeather(weatherData: state.weatherModel);

          }

          return  DefaulHomePage() ;
          },
        ),
    );
  }
}




