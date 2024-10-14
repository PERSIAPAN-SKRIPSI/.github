void main(List<String> args) {
  //kita bikin variabel enum 
    var weatherForecast = Weather.cloudy;
    print(weatherForecast);
}
enum Weather {
  sunny(20),
  cloudy(40),
  rain (50);

  final int rainAmount;

  const Weather(this.rainAmount);

  @override
  String toString()=>"Today weather forecast is $name with a $rainAmount%chance of rain";

}