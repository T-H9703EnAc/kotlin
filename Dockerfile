FROM zenika/kotlin
COPY . /app/
WORKDIR /app
RUN kotlinc BaseDataType.kt -include-runtime -d BaseDataType.jar
RUN kotlinc ControlIf.kt -include-runtime -d ControlIf.jar
COPY run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"] # ENTRYPOINTはコンテナ起動(docker run)時に実行されるコマンド
CMD ["BaseDataType.jar"] # デフォルト
