package cn.zwz.consumer1.config;

import com.netflix.loadbalancer.BestAvailableRule;
import com.netflix.loadbalancer.IRule;
import com.netflix.loadbalancer.RandomRule;
import com.netflix.loadbalancer.RetryRule;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class BeanConfig {

    /**
     * 使用Ribbon
     * 消费者不应该有Service
     * 加了@LoadBalanced注解,不能再用localhost,因为这样不知道这个请求会转发到哪个项目，所以会报错，因而只能用项目名称provider来代替
     * @return
     */
    @Bean
    @LoadBalanced
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }

    /**
     * （默认是轮询算法）RoundRobinRule:轮询选择， 轮询index，选择index对应位置的Server；
     */
    @Bean
    public IRule iRule() {
        // 随机策略：随机选择server
        // return new RandomRule();
        // 重试策略：轮询策略,如某个服务连接不成功,则从其他服务轮询
        return new RetryRule();
        // 最低并发策略：只连首次成功的服务，如果本服务连接失败,再尝试连接其他服务
        // return new BestAvailableRule();
    }
}