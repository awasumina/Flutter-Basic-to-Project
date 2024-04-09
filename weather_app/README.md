# weather_app


This Flutter project is a weather application that fetches and displays weather information for a specified city. The main structure revolves around several key components:

1. **Main Entry Point (main.dart):**
   The `main.dart` file serves as the entry point for the application.It initializes a Flutter app (`MyApp`) with a dark theme and disables the debug banner.
   - The `MyApp` widget sets up the MaterialApp with the WeatherScreen as the home screen.

2. **Weather Screen (weather_screen.dart):**
   The `WeatherScreen` is a StatefulWidget responsible for displaying weather information. It includes an app bar with a refresh button to update weather data. The main body of the screen consists of a FutureBuilder to handle asynchronous data fetching. The weather data is obtained from the OpenWeatherMap API using an API key stored in a separate `secrets.dart` file. The screen shows the current temperature, weather conditions, and additional information like humidity, wind speed, and pressure. Hourly weather forecast cards are displayed using a ListView.builder for lazy loading.

3. **Additional Info Item (additional_info_item.dart):**
   - This widget defines a reusable component for displaying additional weather information. It takes an icon, label, and value to display humidity, wind speed, and pressure.

4. **Hourly Forecast Item (hourly_forecast_item.dart):**
   - Similar to Additional Info Item, this widget handles the display of hourly weather forecast items. It shows the time, temperature, and weather condition icon for each hourly forecast.

5. **Secrets (secrets.dart):**
   - This file contains sensitive information like API keys (e.g., OpenWeatherMap API key). It is essential to keep such information secure and out of version control systems.

Overall, the project demonstrates how to fetch and display weather data using Flutter widgets and asynchronous programming techniques. It emphasizes code modularity by separating UI components into reusable widgets, enhancing maintainability and scalability.