---
title: "Springboot"
weight: 1
# bookFlatSection: false
bookShowToC: true
---

## Spring Boot
---
### 코드 구조
#### Main Application Class
---
- 메인 클래스는 다른 클래스들의 최상위의 root package에 위치

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
