---
title: Yarn install | Yarn的安装
date: 2019-12-06 13:55:13
tags:
---

安装
---

有了 node 后就可以安装 yarn 包管理器

添加仓库源并安装

```sh
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -  # key
```

```sh
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list  # list
```

```sh
sudo apt update && sudo apt install yarn  # 安装
yarn --version  # 检查安装的版本
```

设置yarn global path
---

添加路径到`.bashrc`才能使用全局安装的包。

```sh
echo 'export PATH="$(yarn global bin):$PATH"'>>~/.bashrc  # 添加路径
source ~/.bashrc  # 重新载入
```

References
--

1. [安装 | Yarn](https://yarnpkg.com/zh-Hans/docs/install#debian-stable)
2. [yarn global | Yarn](https://yarnpkg.com/en/docs/cli/global)
