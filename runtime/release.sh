# docker buildxでクロスビルドをするためには
# 先に docker buildx create --name {好きな名前} でビルダーインスタンスを作成し、
# docker buildx use {名前} でアクティブなインスタンスをdefault以外にしておく必要がある。
# また、docker buildx系のコマンドを有効化するには、以下の環境変数をセットする必要がある。
export DOCKER_CLI_EXPERIMENTAL=enabled
export DOCKER_BUILDKIT=1

docker buildx build --platform linux/amd64,linux/arm64 -t nanasi880/golang-runtime --push .

