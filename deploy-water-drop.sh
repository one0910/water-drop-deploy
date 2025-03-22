#!/bin/bash
set -e

cd /opt/docker

echo "📥 Step 1: 拉取最新鏡像..."
docker compose pull

echo "🧹 Step 2: 關閉並清除現有容器..."
docker compose down || true

echo "🐬 Step 4: 啟動 mysqlserver..."
docker compose up -d mysqlserver
echo "⏳ 等待 mysqlserver 初始化..."
sleep 15  # 視 DB 初始化時間調整

echo "🧠 Step 5: 啟動 server（後端 API）..."
docker compose up -d server
sleep 5  # 可視情況加入健康檢查

echo "🖥 Step 6: 啟動 pc（後台系統）..."
docker compose up -d pc

echo "📱 Step 7: 啟動 mobile（前台手機版）..."
docker compose up -d mobile

echo "✅ 所有服務已依序啟動完成！"
