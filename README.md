# Intruction
This is a self-developed online education platform for booking and scheduling classes. On this platform, businesses can create and manage courses, while users can purchase and learn from them. The project is a fully functional full-stack application built with React 18 + Ant Design + TypeScript + NestJS + GraphQL + TypeORM + MySQL, including both frontend and backend systems.

Note: The source code is not included in this repository. However, you can directly use the platform by building Docker images with docker-compose.

## Demo Site
#### Frontend Stage:
![圖片](https://github.com/user-attachments/assets/b2164bf8-72b7-4acc-b905-5c0b1891dd35)

#### Dashboard Site:
![圖片](https://github.com/user-attachments/assets/7b2e0d68-7504-4530-a6e6-edefa5ab1100)

### Prerequisites
- Install  `docker` https://www.docker.com/get-started/

### Step 1: Clone the repository
> git clone https://github.com/one0910/water-drop-deploy.git

### Step 2: Enter the project folder
> cd cd water-drop-deploy

### Step 3: Log in to Alibaba Cloud container registry
- Run the following command on your local machine:
> docker login --username=one****@gmail.com crpi-yhatmqd5rly143h5.ap-southeast-1.personal.cr.aliyuncs.com
- `Login Password `: abc12345

### Step 4: Pull Docker images
> docker-compose pull

### Step 5: Start Docker containers
> docker-compose up

### Step 6: Verify containers
- Ensure that the following four services are running under the `water-drop-deploy` project:
- `mobile`、`pc`、`server`、`mysqlserver`
![圖片](https://github.com/user-attachments/assets/ce058186-7592-4a28-ba44-7032521f41bc)

### Step 7: Open the service in your browser
- Visit the following URLs to verify everything is working:
- http://localhost:3000/
- http://localhost:4000/

## Other Useful Commands
- Remove all Docker images：`docker rmi -f $(docker images -aq)`
- Stop all services：`docker-compose down`
