package cn.zwz.provider2.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    /**
     * http://localhost:1202/user/list?name=zwz
     */
    @GetMapping("/list")
    public String getUserList(@RequestParam String name) {
        System.out.println("provider2 Hello Get! " + name);
        return "provider2 Hello Get! " + name;
    }

    @PostMapping("/list")
    public String postUserList(@RequestParam String name) {
        System.out.println("provider2 Hello Post! " + name);
        return "provider2 Hello Post! " + name;
    }
}
