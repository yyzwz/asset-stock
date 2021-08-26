package cn.zwz.provider1.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    /**
     * http://localhost:1201/user/list?name=zwz
     */
    @GetMapping("/list")
    public String getUserList(@RequestParam String name) {
        System.out.println("provider1 Hello Get! " + name);
        return "provider1 Hello Get! " + name;
    }

    @PostMapping("/list")
    public String postUserList(@RequestParam String name) {
        System.out.println("provider1 Hello Post! " + name);
        return "provider1 Hello Post! " + name;
    }
}
