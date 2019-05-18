<%@ page import="apiclient.Client" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% Client apiClient = new Client(); %>
<script>
    var apiData = <% out.println(apiClient.getWeather("Katowice,Pl")); %>;
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pogoda Katowice</title>
    <link rel="stylesheet" href="css/uikit.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <script src="js/jquery.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/functions.js"></script>
</head>
<body>
<div class="uk-vertical-align uk-text-center uk-height-1-1">
    <div class="uk-vertical-align-middle" style="width: 400px;">
        <pre></pre>
        <h1>Pogoda dla Katowic</h1>
        <ul class="uk-list uk-list-striped">
            <li><i class="uk-icon-cloud uk-alert-warning"></i> Poziom zachmurzenia: <span><script>document.write(apiData.clouds.all);</script>%</span></li>
            <li><i class="uk-icon-thermometer-empty uk-alert-warning"></i> Temperatura: <span><script>document.write(toCelsius(apiData.main.temp));</script><sup>o</sup>C</span></li>
            <li><i class="uk-icon-compress uk-alert-warning"></i> Ciśnienie: <span><script>document.write(apiData.main.pressure);</script> hpa</span></li>
            <li><i class="uk-icon-arrow-right uk-alert-warning"></i> Prędkość wiatru: <span><script>document.write(apiData.wind.speed);</script> m/s</span></li>
        </ul>
    </div>
</div>
</body>
</html>