# HAL Cinema Backend

.envファイルは以下のように作成してください。
```
POSTGRES_USERNAME=
POSTGRES_PASSWORD=
POSTGRES_DATABASE_NAME=
```

## 環境構築
```bash
bundle install
rails db:migrate
rails s
```