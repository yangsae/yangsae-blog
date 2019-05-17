---
title: "Springboot"
weight: 1
date: '`r format(Sys.Date(), "%B %d, %Y")`'
# bookFlatSection: false
bookShowToC: true
---

## Spring Boot
---
### 코드 구조
#### Main Application Class
---
- 메인 클래스는 다른 클래스들의 최상위의 root package에 위치
<pre>
    com
     +- example
         +- myapplication
             +- Application.java
             |
             +- customer
             |   +- Customer.java
             |   +- CustomerController.java
             |   +- CustomerService.java
             |   +- CustomerRepository.java
             |
             +- order
                 +- Order.java
                 +- OrderController.java
                 +- OrderService.java
                 +- OrderRepository.java
</pre>
- `Application.java` 파일에 `@SpringBootApplication` 어노테이션으로 `main` 메소드를 선언  
- `@SpringBootApplication` 어노테이션은 root package를 이용해 `@Entity` 아이템들을 검색함
- `@SpringBootApplication` 어노테이션은 `@EnableAutoConfiguration`과 `@ComponentScan` 어노테이션 둘의 역할을 함
<pre>
    package com.example.myapplication;

    import org.springframework.boot.SpringApplication;
    import org.springframework.boot.autoconfigure.SpringBootApplication;

    @SpringBootApplication
    public class Application {

    	public static void main(String[] args) {
    		SpringApplication.run(Application.class, args);
    	}
    }
</pre>

#### 설정 클래스
---
- 스프링 부트는 자바 기반 설정을 선호함
-
