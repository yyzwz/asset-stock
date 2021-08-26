package cn.zwz.zuul.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class GateWayController {

    @RequestMapping("/local")
    public String hello() {
        return "SELF API GATEWAY";
    }
}