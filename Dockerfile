FROM node:lts-alpine

# タイムゾーンを設定
ENV TZ Asia/Tokyo

# 作業ディレクトリを設定
WORKDIR /app

# ローカルのファイルをコンテナにコピー
COPY vue-project ./

# パッケージ更新など
RUN apk update && npm install 

# コンテナが起動した際にコマンド実行
CMD ["npm", "run", "dev", "--host"]