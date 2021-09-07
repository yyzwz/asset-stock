package cn.zwz.feign.config;


import cn.zwz.feign.service.UserService;

public class MyFallback implements UserService {
    @Override
    public String getUserList(String name) {
        return "错误啦啦啦!";
    }
}
