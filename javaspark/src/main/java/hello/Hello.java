package hello;

import static spark.Spark.get;
import static spark.Spark.port;

public class Hello {
    
    public static void main(String[] args) {
        port(8080);
        System.out.println("stating java server");
        get("/", (req, res) -> "Hello World");
    }

}
