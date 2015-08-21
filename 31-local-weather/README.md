# Local Weather Application

Use the [OpenWeatherMap](http://openweathermap.org/API) API to build an application that meets the following criteria.

**given** a user wants to view weather information<br/>
**when** the user visits your initial view<br/>
**then** there should be an input field to accept a zip code value

**given** a user wants to view weather information<br/>
**when** the user visits your initial view<br/>
**then** there should be a submit button next to the zip code field

**given** a user has entered in some text into the zip code field<br/>
**when** the user presses the enter key<br/>
**or** the user clicks the submit button<br/>
**then** the value should be validated as a zip code (5 digit number)

**given** the user has entered a valid zip code<br/>
**when** the user presses the enter key<br/>
**or** clicks the submit button<br/>
**then** the current weather for the provided zip code should be displayed, which includes

1. Temperature
1. Conditions
1. Air pressure
1. Wind speed
1. A link to show the 4-day forecast

**given** the user is viewing the current forecast<br/>
**when** the user clicks on the link to view the 4-day forecast<br/>
**then** the current data (see above), and the data for the next 4 days should be displayed
