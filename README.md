# Home Services Backend

家庭服务后端系统 - 基于微服务架构的家政服务平台

## 项目简介

这是一个采用微服务架构设计的家庭服务（家政服务）后端平台，为用户提供全面的家政服务解决方案。系统支持服务人员管理、机构管理、订单处理、支付交易、评价系统、优惠券管理等核心功能。

## 技术栈

- **核心框架**：Java 11 + Spring Boot
- **数据库**：MySQL + MyBatis Plus
- **缓存**：Redis + Redisson
- **消息队列**：RabbitMQ
- **搜索引擎**：Elasticsearch
- **分布式事务**：Seata
- **服务限流**：Sentinel
- **定时任务**：XXL-JOB
- **API文档**：Knife4j (Swagger)
- **第三方服务**：阿里OSS、高德地图、腾讯微信

## 项目结构

```
home-services-backend
├── jzo2o-api              # API工程 - Feign客户端接口定义
├── jzo2o-customer         # 客户管理服务
├── jzo2o-foundations      # 运营基础服务
├── jzo2o-framework        # 系统架构基础工程
│   ├── jzo2o-canal-sync   # Canal数据同步
│   ├── jzo2o-common       # 公共工具类
│   ├── jzo2o-es           # Elasticsearch封装
│   ├── jzo2o-knife4j-web  # API文档生成
│   ├── jzo2o-mvc          # MVC基础组件
│   ├── jzo2o-mysql        # MyBatis Plus封装
│   ├── jzo2o-rabbitmq     # RabbitMQ封装
│   ├── jzo2o-redis        # Redis封装
│   ├── jzo2o-statemachine # 状态机
│   ├── jzo2o-thirdparty   # 第三方服务集成
│   └── jzo2o-xxl-job      # 定时任务
└── jzo2o-gateway          # 网关服务
```

## 核心功能模块

### 客户管理服务 (jzo2o-customer)

- **用户管理**：普通用户地址簿管理、用户信息维护
- **服务人员/机构管理**：服务人员认证、机构认证、账户信息管理
- **服务技能管理**：服务人员技能设置、服务范围配置
- **评价系统**：服务评价、评分统计、点赞举报

### 运营基础服务 (jzo2o-foundations)

- **区域管理**：服务区域配置、区域启用/禁用
- **服务类型/项目**：服务分类、服务项目配置
- **服务定价**：区域服务价格设置、热门服务设置
- **首页服务**：热门服务推荐、服务分类展示

### 公共模块 (jzo2o-framework)

- **公共组件**：统一响应、异常处理、分页工具
- **缓存管理**：分布式锁、哈希缓存、队列同步
- **消息队列**：消息发送、延迟消息、失败消息重试
- **分布式事务**：状态机、事务快照

## 系统架构

系统采用微服务架构，主要服务包括：

| 服务名称 | 说明 | 端口 |
|---------|------|-----|
| jzo2o-gateway | 网关服务 | - |
| jzo2o-customer | 客户管理服务 | 8080 |
| jzo2o-foundations | 运营基础服务 | 8080 |

## 环境要求

- JDK 11+
- MySQL 5.7+
- Redis 5.0+
- RabbitMQ 3.8+
- Elasticsearch 7.x

## 快速开始

### 1. 克隆项目

```bash
git clone https://gitee.com/han-duolong/home-services-backend.git
cd home-services-backend
```

### 2. 编译项目

```bash
mvn clean install -DskipTests
```

### 3. 配置说明

各服务配置文件位于 `src/main/resources/` 目录下：

- `bootstrap.yml` - 基础配置
- `bootstrap-dev.yml` - 开发环境配置
- `bootstrap-test.yml` - 测试环境配置
- `bootstrap-prod.yml` - 生产环境配置

### 4. 启动服务

按依赖顺序启动：

1. 启动基础设施服务（Redis、MySQL、RabbitMQ、ES）
2. 启动 jzo2o-framework 相关模块
3. 启动 jzo2o-customer 和 jzo2o-foundations
4. 启动 jzo2o-gateway

## 主要API接口

### 用户端

- 地址簿管理
- 用户登录（微信登录）
- 服务查询与搜索
- 订单创建与支付
- 服务评价

### 服务人员/机构端

- 服务人员/机构登录
- 认证申请（个人认证/机构认证）
- 服务技能设置
- 服务范围设置
- 接单管理

### 运营端

- 区域管理
- 服务类型/项目配置
- 服务定价
- 认证审核
- 用户/服务人员管理

## License

本项目仅供学习交流使用。