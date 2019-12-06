---
title: Hexo guide | Hexo使用指南
date: 2019-12-05 09:01:48
tags:
---

{% asset_img Snipaste_2019-12-05_09-02-16.png exampel picture %}

Hexo是基于node的博客生成器，你可以使用md语法进行编写，然后生产静态网页部署。

对于我来说，选择Hexo是一种学习的过程，也是急需一个可以使用的GitHub博客，也是积累经验为自己开发做准备。

初次使用的缺点是，md是通过编译生成静态页面的，也因此添加了额外的标志去解析标签，而不像GitHub是直接渲染md。当然，这也是博客系统的复杂性提出的要求，文档，样式，富文本，资产等是绕不开的话题。能够不使用数据库，如此轻量的解决博客存储问题，已经是相当了不起了。在此感谢Hexo的作者！

安装
---

准备工作：新建`[your user name].github.io`的存储库。

安装脚手架

``` bash
yarn global add hexo-cli
```

初始化

``` bash
mkdir blog
cd blog
hexo init
```

添加部署存储库

``` yml
deploy:
  type: git
  repository: https://github.com/[your user name]/[your user name].github.io
  branch: master
```

**注意：** 此处的是博客源文件，那你可以新开一个存储库去存储，和部署的存储库是不同的。（部署的只是public文件夹）

新建文章

``` bash
hexo new post '[your title]'
```

生成html

``` bash
hexo g
```

部署到存储库（需要git gui输入用户名密码）

``` bash
hexo d
```

查看网页效果

``` url
https://[your name].github.io
```

图片
---

全局图片可以放在`source/images`文件夹，并通过`![](/images/image.jpg)`进行使用。

单独的资产文件需要开启选项`_config.yml`：

``` yml
post_asset_folder: true
```

然后在使用`hexo new [layout] <title>`会同时生成同名文件夹，图片就放进去，并使用特殊标签去使用。

```text
{% asset_img Snipaste_2019-12-05_09-02-16.png exampel picture %}
```

效果：

{% asset_img Snipaste_2019-12-05_09-02-16.png exampel picture %}

主题
---

主题使用的是`ICARUS`，只要复制到主题文件夹再配置启用即可。

``` bash
git clone https://github.com/ppoffice/hexo-theme-icarus.git themes/icarus
```

在主配置文件`_config.yml`中，找到并替换掉默认主题：

``` yml
theme: icarus
```

效果：

{% asset_img Snipaste_2019-12-05_15-40-48.png exampel picture %}

是不是比默认的好看多了:D

References
---

1. [ppoffice/hexo-theme-icarus: A simple, delicate, and modern theme for the static site generator Hexo.](https://github.com/ppoffice/hexo-theme-icarus)
2. [Hexo](https://hexo.io/)
