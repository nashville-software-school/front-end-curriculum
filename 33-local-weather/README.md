# Local Weather Application

Use the [OpenWeatherMap](http://openweathermap.org/API) API to build an application that meets the following criteria.

**given** a user wants to view weather information
**when** the user visits your initial view
**then** there should be an input field to accept a zip code value

**given** a user wants to view weather information
**when** the user visits your initial view
**then** there should be a submit button next to the zip code field

**given** a user has entered in some text into the zip code field
**when** the user presses the enter key
**or** the user clicks the submit button
**then** the value should be validated as a zip code (5 digit number)

**given** the user has entered a valid zip code
**when** the user presses the enter key
**or** clicks the submit button
**then** the current weather for the provided zip code should be displayed, which includes
1. Temperature
1. Conditions
1. Air pressure
1. Wind speed
1. A link to show the 4-day forecast

**given** the user is viewing the current forecast
**when** the user clicks on the link to view the 4-day forecast
**then** the current data (see above), and the data for the next 4 days should be displayed
