package apiclient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;


public class Client {

    private final String KEY = "643ad913e2f4fbfbf72c77892414af90";
    private final  String SERVICE = "https://api.openweathermap.org/data/2.5/weather?q=";

    public String getWeather(String location) throws IOException {
        String currentUrl = SERVICE + location + "&appid=" + KEY;
        URL url = new URL(currentUrl);
        URLConnection conn = url.openConnection();
        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        StringBuilder result = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            result.append(line);
        }
        rd.close();
        return result.toString();
    }

}
