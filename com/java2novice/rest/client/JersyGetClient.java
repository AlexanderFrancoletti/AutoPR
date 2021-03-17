private Client client;
private WebTarget target;

@PostConstruct
protected void init() {
    client = ClientBuilder.newClient();
    //query params: ?q=Turku&cnt=10&mode=json&units=metric
    target = client.target("http://api.openweathermap.org/data/2.5/forecast/daily")
       .queryParam("cnt", "10")
       .queryParam("mode", "json")
       .queryParam("units", "metric");
}