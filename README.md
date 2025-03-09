# Intruction
這是一個自製的線上預約的教育平台，在這個平台上商家可以建、管理課程，而用戶可以進行購買並學習課程，該專案是透過 React 18 + AntD +TS + NestJS + GraphQL + TypeOrm + Mysql 等技術完全的一個全端平台，包含前台及中後端。而此項目內容並非原始碼，可是可藉由docker-compose建立docker image，進而直接使用該教育平台

## Demo Site
#### Frontend Stage:
![圖片](https://github.com/user-attachments/assets/b2164bf8-72b7-4acc-b905-5c0b1891dd35)

#### Dashboard Site:
![圖片](https://github.com/user-attachments/assets/7b2e0d68-7504-4530-a6e6-edefa5ab1100)

### 準備工作
- 安装 `docker` https://www.docker.com/get-started/

### 第一步：下載代碼
> git clone https://github.com/one0910/water-drop-deploy.git

### 第二步：下載代碼後，進入該專案資料夾 water-drop-deploy

### 第三步：登入阿里雲鏡像
- 在本機端執行
> docker login --username=one****@gmail.com crpi-yhatmqd5rly143h5.ap-southeast-1.personal.cr.aliyuncs.com
- `Login Password `: abc12345

### 第四步：登入成功後下載docker鏡像
- 在本機端執行
> docker-compose pull

### 第五步：下載完docker鏡像後，執行docker鏡像啟動
- 在本機端執行
> docker-compose up

### 第六步：鏡像啟動後，確認對應的容器是否啟用
- 分別有4個服務會在 `water-drop-deploy` 底下
- `mobile`、`pc`、`server`、`mysqlserver`
![圖片](https://github.com/user-attachments/assets/ce058186-7592-4a28-ba44-7032521f41bc)

### 第七步：開啟服務
- 請分別開啟下面網頁，確認是否正常
- http://localhost:3000/
- http://localhost:4000/

## 其他基础命令
- 删除所有鏡像：`docker rmi -f $(docker images -aq)`
- 關閉所有鏡像服務：`docker-compose down`
