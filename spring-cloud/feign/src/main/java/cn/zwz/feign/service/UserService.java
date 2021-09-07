package cn.zwz.feign.service;

import cn.zwz.feign.config.MyFallback;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/user")
@FeignClient(name = "zwz-provider",fallback = MyFallback.class)
public interface UserService {

    @GetMapping("/list")
    public String getUserList(@RequestParam("name") String name);
}
