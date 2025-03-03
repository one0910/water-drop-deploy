# 项目部署

> 具体步骤如下：

## 准备工作
- 安装 `docker`：https://help.aliyun.com/document_detail/51853.html?spm=5176.12818093_-1363046575.help.dexternal.3be916d03sJH3w
- 安装 `docker-compose`： `curl -L "https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/soft/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose`
- 文档：https://www.runoob.com/docker/docker-compose.html

## 第一步：下载代码
- clone 以下代码：`water-drop-deploy water-drop-server water-drop-mobile water-drop-pc`

## 第二步：构建镜像
- 在本地执行（Mac 环境）
- 进入 `water-drop-deploy` 目录
- 执行 `docker-compose build`

## 第三步：提交镜像到阿里云镜像仓库
- 在本地执行（Mac 环境）
- 登录镜像仓库：`docker login --username=123456li********@163.com registry.cn-beijing.aliyuncs.com`
- 提交镜像：`docker-compose push`

## 第四步：到 ECS 服务器上登录镜像仓库服务
- 在服务器 ECS 执行（Linux 环境）
- 登录镜像仓库：`docker login --username=123456lichengbei@163.com registry.cn-beijing.aliyuncs.com`

## 第五步：到 ECS 服务器上克隆 water-drop-deploy 项目
- 下载 `water-drop-deploy` 代码
- 执行 `docker-compose pull`

## 第六步：在 ECS 服务器上启动镜像
- 在 `water-drop-deploy` 执行 `docker-compose up`

## 第七步：配置 nginx 反向代理服务
- ECS 服务器上装一个 nginx，同时配置代理
```
server {
    listen 443 ssl; // 80
    server_name water-drop.yondu.vip;

    access_log  /opt/log/mooc/access.log;
    
    error_log   /opt/log/mooc/error.log;

    ssl_certificate cert/10101144_water-drop.yondu.vip.pem;
    ssl_certificate_key cert/10101144_water-drop.yondu.vip.key;
  
    ssl_session_timeout 5m;
    ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;
    ssl_protocols TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers on;
 
    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```

## 第八步：配置域名
- 阿里云域名配置：https://dc.console.aliyun.com/#/domain-list/all
- 配置域名：`water-drop.yondu.vip`

## 其他基础命令
- 删除所有镜像：`docker rmi -f $(docker images -aq)`
- 删除 none 镜像：`docker rmi $(docker images -f "dangling=true" -q) -f`
- 进程按照内存排序：`ps aux --sort=-%mem`
- 进入容器命令行：`docker exec -it mysqlserver bash`
- 证书：https://yundun.console.aliyun.com/?spm=5176.8351553.top-nav.4.775f19916vAtGb&p=cas#/overview/cn-hangzhou