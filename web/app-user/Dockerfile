# ベースイメージ（Nodeのバージョンはプロジェクトに合わせて調整してください）
FROM node:18-alpine

# 作業ディレクトリ
WORKDIR /app

# 依存インストールのため package.json と package-lock.json を先にコピー
COPY package*.json ./

# STAGE を引数として受け取り、インストール方法を切り替え。デフォルトではdevで、composeから起動する際はcomposeから指定された値を使用
# prismaは、サービスが初回起動時に一度だけ実行される。その後の更新は毎回手動でgenerateする必要がある。
ARG STAGE=dev
RUN if [ "$STAGE" = "prod" ]; then \
      npm ci --only=production & npx prisma generate; \
    else \
      npm install; \
    fi

# 以降のファイルは docker-compose でボリュームマウントするのでここではコピーしない

# 3000ポートを開ける
EXPOSE 3000

# docker-compose.yml の command で制御、dockerfile単体ではこのコマンドが実行される
CMD ["npm", "run", "dev"]
