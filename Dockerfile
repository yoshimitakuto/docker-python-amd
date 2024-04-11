# ベースイメージを指定します
FROM python:3

RUN apt-get update
RUN pip install --upgrade pip

# 作業ディレクトリを設定します
RUN mkdir app
WORKDIR /app

# ホストのスクリプトをコンテナ内の作業ディレクトリにコピーします
COPY ./opt/sample.py /app/

# sample.pyを引数に30を入れて実行
CMD ["python", "sample.py", "30"]

# pythonの場合はamd64でしか起動しないので注意 @see https://qiita.com/nogami_masaru/items/e4bcedbb3c7ffcafa79c 
