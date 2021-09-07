package cn.zwz.eureka1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class Eureka1Application {

    public static void main(String[] args) {
        SpringApplication.run(Eureka1Application.class, args);
    }

}
