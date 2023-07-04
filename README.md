# HAL Cinema Backend

## 環境構築

### 環境変数
.envファイルは以下のように作成してください。
```
POSTGRES_USERNAME=
POSTGRES_PASSWORD=
POSTGRES_DATABASE_NAME=
```

### パッケージインストール・マイグレーション
```bash
bundle install
rails db:migrate
```

### データ挿入
pgAdminにてhal_cinema(任意)というデータベースを作成してください。

```bash
# ユーザー名がデフォルトのpostgres、データベース名がhal_cinemaという前提です
backend> psql -f .\sql\hal_cinema.sql -U postgres -d hal_cinema
```

### サーバ起動
```bash
rails s
```