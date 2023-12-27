---
title: "Arquitectura hexagonal, DDD, and Spring"
description: "La arquitectura hexagonal es un modelo de diseño de aplicaciones de software que se estructura alrededor de la lógica del dominio para aislarla de factores externos."
pubDate: "October 27, 2023"
heroImage: "/tech_imgs/spring-boot.svg"
badge: "Java"
tags: ["springboot", "java", "hexagonal", "solid"]
---

First, we should define principles to divide our code. As explained briefly already, hexagonal architecture defines the inside and outside part.
freestar
What we’ll do here is divide our application into three layers: application (outside), domain (inside), and infrastructure (outside):
DDD Layers
Through the application layer, the user or any other program interacts with the application. This area should contain things like user interfaces, RESTful controllers, and JSON serialization libraries. It includes anything that exposes entry to our application, and orchestrates the execution of domain logic.
In the domain layer, we keep the code that touches and implements business logic. This is the core of our application. This layer should be isolated from both the application part and infrastructure part. In addition, it should also contain interfaces that define the API to communicate with external parts, like the database, which the domain interacts with.
Finally, the infrastructure layer is the part that contains anything that the application needs to work, such as database configuration or Spring configuration. It also implements infrastructure-dependent interfaces from the domain layer.
<br>
<br>
For more details, refer to https://www.baeldung.com/hexagonal-architecture-ddd-spring