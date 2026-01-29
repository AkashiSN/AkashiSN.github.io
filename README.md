# AkashiSN.github.io

GitHub Pages を利用したスクリプトホスティング。

## 使い方

EC2やVMの user_data 等で以下のように利用できます:

```bash
curl -fsSL https://akashisn.info/setup.sh | bash
```

## ラッパースクリプトの追加方法

新しいスクリプトを公開する場合、リポジトリのルートに `.sh` ファイルを作成してください。

例: `Server-Config` リポジトリの `scripts/example.sh` を公開する場合

```bash
#!/bin/bash
set -euo pipefail
curl -fsSL https://raw.githubusercontent.com/AkashiSN/Server-Config/main/scripts/example.sh | bash
```

これにより `curl -fsSL https://akashisn.info/example.sh | bash` で実行可能になります。

## 仕組み

1. `curl https://akashisn.info/somescript.sh` がラッパースクリプトを取得
2. `| bash` でラッパーが実行される
3. ラッパーが `raw.githubusercontent.com` から実スクリプトを取得・実行
