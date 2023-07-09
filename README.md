# HAL Cinema Backend

## API

| HTTPメソッド | エンドポイント | 詳細 |
| --- | --- | --- |
| GET | /api/v1/user?email=<email> | ユーザー情報 |
| GET・POST | /api/v1/movies | 映画情報一覧 |
| GET・PUT・DELETE | /api/v1/movies/<id> | 映画情報 |
| GET・POST | /api/v1/tickets | チケット情報一覧 |
| GET・PUT・DELETE | /api/v1/tickets/<id> | チケット情報 |
| GET・POST | /api/v1/screens | スクリーン情報一覧 |
| GET・PUT・DELETE | /api/v1/screens/<id> | スクリーン情報 |
| GET・POST | /api/v1/seats | 座席情報一覧 |
| GET・PUT・DELETE | /api/v1/seats/<id> | 座席情報 |
| GET・POST | /api/v1/schedules | スケジュール情報一覧 |
| GET・PUT・DELETE | /api/v1/schedules/<id> | スケジュール情報 |
| GET・POST | /api/v1/reservations | 予約情報一覧 |
| GET・PUT・DELETE | /api/v1/reservations/<id> | 予約情報 |

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

# 全SQLが完成するまでは以下コマンドを順に使用してください
# [注意]screen_idがseatsで連番で使用されるため作成に失敗した場合はscreensテーブルを削除して再作成してコマンドを使用してください
psql -f .\sql\movies.sql -U postgres -d hal_cinema
psql -f .\sql\tickets.sql -U postgres -d hal_cinema
psql -f .\sql\screens.sql -U postgres -d hal_cinema
psql -f .\sql\seats.sql -U postgres -d hal_cinema
```

### サーバ起動
```bash
rails s
```

### 以下モデル作成時のコマンドメモ(環境構築には必要ないです)
```bash
# User
rails generate model User provider:string uid:string name:string email:string

# Movie
rails generate model Movie title:string description:string director:string actors:string duration:integer thumbnail:string

# Ticket
rails generate model Ticket name:string price:decimal

# Screen
rails generate model Screen name:string

# Seat
rails generate model Seat screen:references column:string row:integer

# Schedule
rails generate model Schedule movie:references screen:references date:datetime

# Reservation
rails generate model Reservation user:references ticket:references seat:references schedule:references
```