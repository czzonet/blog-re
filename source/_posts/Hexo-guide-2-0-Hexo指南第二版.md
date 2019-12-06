---
title: Hexo guide 2.0 | Hexo指南第二版
date: 2019-12-05 23:27:17
tags:
---

增加了一些注意事项

.gitignore要添加忽略

``` text
.DS_Store
Thumbs.db
db.json
*.log
node_modules/
public/
.deploy*/
yarn.lock
themes/
```

hexo部署需要安装部署器

``` sh
yarn add hexo-deployer-git
```

主题使用next比较简洁，并且配置机制容易保存。

安装主题

``` sh
git clone https://github.com/theme-next/hexo-theme-next themes/next
```

配置把`/themes/next/_config.yml`复制到`/source/_data/next.yml`并设置

``` yml
override： true
```

Reference
---

1. [hexojs/hexo-deployer-git: Git deployer plugin for Hexo.](https://github.com/hexojs/hexo-deployer-git)
2. [hexo-theme-next/DATA-FILES.md at master · theme-next/hexo-theme-next](https://github.com/theme-next/hexo-theme-next/blob/master/docs/DATA-FILES.md)
3. [theme-next/hexo-theme-next: Elegant and powerful theme for Hexo.](https://github.com/theme-next/hexo-theme-next)
