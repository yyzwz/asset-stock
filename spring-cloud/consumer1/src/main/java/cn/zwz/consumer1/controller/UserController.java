package cn.zwz.consumer1.controller;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalancerClient;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private LoadBalancerClient loadBalancerClient;

    private static final String REST_URL_PREFIX = "http://zwz-provider:1201/";

    /**
     * 消费者调用生产者 无Eureka
     */
    @RequestMapping("/getList")
    public String getList() {
        Map<String,Object> paramMap = new ConcurrentHashMap<>();
        paramMap.put("name","郑为中");
        return restTemplate.getForObject(REST_URL_PREFIX + "user/list?name={name}", String.class, paramMap);
    }

    @RequestMapping("/getNewList")
    public String getNewList() {
        this.loadBalancerClient.choose("zwz-provider");
        Map<String,Object> paramMap = new ConcurrentHashMap<>();
        paramMap.put("name","郑为中");
        return restTemplate.getForObject("http://zwz-provider/user/list?name={name}", String.class,paramMap);
    }

    @RequestMapping("/postList")
    public String postList() {
        this.loadBalancerClient.choose("zwz-provider");
        MultiValueMap<String,Object> dataMap = new LinkedMultiValueMap();
        dataMap.add("name","郑为中");
        return restTemplate.postForObject("http://zwz-provider/user/list", dataMap,String.class);
    }

    /**
     * 开启熔断器
     * HystrixCommand：报错即服务降级
     */
    @RequestMapping("/hystrixTest")
    @HystrixCommand(fallbackMethod = "myError")
    public String hystrixTest(@RequestParam int a,@RequestParam int b) {
        if(b == 0) {
            throw new ArithmeticException("b can‘t is 0!");
        }
        return a + " / " + b + " = " + a/b;
    }

    /**
     * 指定一个降级的方法
     */
    public String myError(@RequestParam int a,@RequestParam int b) {
        return "错误啦啦啦啦啦!" + a + " / " + b;
    }
}
