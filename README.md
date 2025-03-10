# Docker + Golang + MySQL プロジェクト  

このプロジェクトは、Docker を使用して Golang と MySQL を連携させるシンプルな REST API のサンプルプロジェクトです。  

## 🏗️ **プロジェクト構成**  
├── Dockerfile  
├── docker-compose.yml  
├── go.mod  
├── go.sum  
├── main.go  
└── README.md  

## 🚀 **セットアップ方法**  

### 1. リポジトリをクローン  
```bash
git clone https://github.com/nguyenduykhanh159/golang-mysql-docker-project.git

cd golang-mysql-docker-project
```

### 2. Docker コンテナをビルド・起動
```bash
docker-compose up --build
```

### 3. API の確認
サーバーは http://localhost:8080 で動作します。

## ✅ **エンドポイント**

メソッド | エンドポイント | 説明 |
|-----------|-----------|-----------|
| GET | /items | すべてのアイテムを取得 |
| POST | /items | 新しいアイテムを作成 |
| GET | /items/{id} | ID に基づいてアイテムを取得 |
| PUT | /items/{id} | ID に基づいてアイテムを更新 |
| DELETE | /items/{id} | ID に基づいてアイテムを削除 |

## 📂 **各ファイルの説明**
### 1. Dockerfile
- Golang イメージを使用してプロジェクトをビルド
- 必要なモジュールをインストール
ポート 8080 を公開
### 2. docker-compose.yml
- db サービス：MySQL コンテナ
- app サービス：Golang アプリケーションコンテナ
### 3. main.go
- Golang の REST API コード
- go-chi によるルーティング
- MySQL との接続・操作

##  🛠️ **開発コマンド**
- Docker コンテナの停止
```bash
docker-compose down
```
- Docker コンテナの再起動
```bash
docker-compose up -d
```
- コンテナのログ確認
```bash
docker-compose logs -f
```

## 📝 **注意事項**
1. `docker-compose.yml` で MySQL のポート番号を 3306 にしています。他のアプリケーションと競合しないように注意してください。
 
2. Golang のコードを変更した場合は、再ビルドする必要があります。
```bash
docker-compose up --build
```

## 🎯 **学習ポイント**
✅ Docker で Golang アプリケーションをコンテナ化  
✅ Golang から MySQL への接続  
✅ REST API の基本的な作成方法  
