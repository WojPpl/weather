<%@ page import="apiclient.Client" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% Client apiClient = new Client(); %>
<script>
    console.log(<% out.println(apiClient.getWeather("Gdansk,Pl")); %>);
    var apiData = <% out.println(apiClient.getWeather("Gdansk,Pl")); %>;
    console.log(apiData.main);
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>System autoryzacji</title>
    <link rel="stylesheet" href="css/uikit.min.css">
    <script src="js/jquery.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/functions.js"></script>
</head>
<body>
<div class="uk-vertical-align uk-text-center uk-height-1-1">
    <div class="uk-vertical-align-middle" style="width: 400px;">
        <pre></pre>
        <h1>Pogoda dla Gdańska</h1>
        <ul>
            <li>Poziom zachmurzenia: <span><script>document.write(apiData.clouds.all);</script>%</span></li>
            <li>Temperatura: <span><script>document.write(toCelsius(apiData.main.temp));</script> <sup>o</sup>C</span></li>
            <li>Ciśnienie: <span><script>document.write(apiData.main.pressure);</script> hpa</span></li>
            <li>Prędkość wiatru: <span><script>document.write(apiData.wind.speed);</script> m/s</span></li>
        </ul>
    </div>
</div>
</body>
</html>