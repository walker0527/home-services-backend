# Home Services Backend

Home Service Backend System - Housekeeping Service Platform Based on Microservice Architecture

## Project Introduction

This is a backend platform for home services (housekeeping services) designed using a microservice architecture, providing users with a comprehensive solution for housekeeping services. The system supports core functionalities such as service provider management, organization management, order processing, payment transactions, review systems, coupon management, and more.

## Technology Stack

- **Core Framework**: Java 11 + Spring Boot
- **Database**: MySQL + MyBatis Plus
- **Cache**: Redis + Redisson
- **Message Queue**: RabbitMQ
- **Search Engine**: Elasticsearch
- **Distributed Transactions**: Seata
- **Rate Limiting**: Sentinel
- **Scheduled Tasks**: XXL-JOB
- **API Documentation**: Knife4j (Swagger)
- **Third-party Services**: Alibaba Cloud OSS, AMap, Tencent WeChat

## Project Structure

```
home-services-backend
├── jzo2o-api              # API Project - Feign Client Interface Definitions
├── jzo2o-customer         # Customer Management Service
├── jzo2o-foundations      # Operations Foundation Service
├── jzo2o-framework        # System Architecture Foundation Project
│   ├── jzo2o-canal-sync   # Canal Data Synchronization
│   ├── jzo2o-common       # Common Utility Classes
│   ├── jzo2o-es           # Elasticsearch Wrapper
│   ├── jzo2o-knife4j-web  # API Documentation Generation
│   ├── jzo2o-mvc          # MVC Base Components
│   ├── jzo2o-mysql        # MyBatis Plus Wrapper
│   ├── jzo2o-rabbitmq     # RabbitMQ Wrapper
│   ├── jzo2o-redis        # Redis Wrapper
│   ├── jzo2o-statemachine # State Machine
│   ├── jzo2o-thirdparty   # Third-party Service Integration
│   └── jzo2o-xxl-job      # Scheduled Tasks
└── jzo2o-gateway          # Gateway Service
```

## Core Function Modules

### Customer Management Service (jzo2o-customer)

- **User Management**: Ordinary user address book management, user information maintenance
- **Service Provider/Organization Management**: Service provider certification, organization certification, account information management
- **Service Skill Management**: Service provider skill settings, service scope configuration
- **Review System**: Service reviews, rating statistics, likes and reports

### Operations Foundation Service (jzo2o-foundations)

- **Area Management**: Service area configuration, area enable/disable
- **Service Type/Projects**: Service categorization, service project configuration
- **Service Pricing**: Regional service price setting, popular service setup
- **Homepage Services**: Popular service recommendations, service category display

### Common Modules (jzo2o-framework)

- **Common Components**: Unified response, exception handling, pagination tools
- **Cache Management**: Distributed locks, hash cache, queue synchronization
- **Message Queue**: Message sending, delayed messages, failed message retries
- **Distributed Transactions**: State machine, transaction snapshots

## System Architecture

The system adopts a microservice architecture. Main services include:

| Service Name | Description | Port |
|---------|------|-----|
| jzo2o-gateway | Gateway Service | - |
| jzo2o-customer | Customer Management Service | 8080 |
| jzo2o-foundations | Operations Foundation Service | 8080 |

## Environment Requirements

- JDK 11+
- MySQL 5.7+
- Redis 5.0+
- RabbitMQ 3.8+
- Elasticsearch 7.x

## Quick Start

### 1. Clone Project

```bash
git clone https://gitee.com/han-duolong/home-services-backend.git
cd home-services-backend
```

### 2. Compile Project

```bash
mvn clean install -DskipTests
```

### 3. Configuration Instructions

Configuration files for each service are located in the `src/main/resources/` directory:

- `bootstrap.yml` - Base Configuration
- `bootstrap-dev.yml` - Development Environment Configuration
- `bootstrap-test.yml` - Testing Environment Configuration
- `bootstrap-prod.yml` - Production Environment Configuration

### 4. Start Services

Start in dependency order:

1. Start infrastructure services (Redis, MySQL, RabbitMQ, ES)
2. Start jzo2o-framework related modules
3. Start jzo2o-customer and jzo2o-foundations
4. Start jzo2o-gateway

## Main API Interfaces

### User Side

- Address Book Management
- User Login (WeChat Login)
- Service Query and Search
- Order Creation and Payment
- Service Reviews

### Service Provider/Organization Side

- Service Provider/Organization Login
- Certification Application (Individual Certification/Organization Certification)
- Service Skill Settings
- Service Scope Settings
- Order Acceptance Management

### Operations Side

- Area Management
- Service Type/Project Configuration
- Service Pricing
- Certification Review
- User/Service Provider Management

## License

This project is for learning and communication use only.