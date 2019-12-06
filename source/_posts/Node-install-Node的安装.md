---
title: Node install | Node的安装
date: 2019-12-06 13:41:57
tags:
---

这里采取 nvm 版本控制器来安装。

nvm
---

1. Install & Update script

    ```sh
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
    ```

2. 简单重启 terminal，或者用手动更新变量，新建一个`run.sh`

    ``` bash
    #!bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    ```

    使用`source ./run.sh`

3. 检查是否成功

    ```sh
    command -v nvm  # will output 'nvm'
    ```

4. 安装长期支持版的 node

    ```sh
    nvm install --lts
    ```

References
---

1. [nvm-sh/nvm: Node Version Manager - Simple bash script to manage multiple active node.js versions](https://github.com/nvm-sh/nvm#install-script)
