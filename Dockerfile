# 環境をインターネットからプルしてる
FROM hseeberger/scala-sbt:11.0.11_1.5.5_2.13.6

# コンテナの中に作業ディレクトリを作成
WORKDIR /app

# ローカルのファイルをコンテナの中にコピー
COPY . .

# sbtのコンパイル
RUN sbt compile

# コンテナの中で実行するコマンド
CMD ["sbt", "run"]