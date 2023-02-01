# 简介
## 项目功能

- 自动化阿里云链接的更新和保存，分享者更新，你就更新
- 简洁的管理后台，管理员面前用户操作透明化，同时管理员的操作有限制
- 简洁的用户页面，操作一目了然
- 大量网页交互操作，学习成本低，凭直觉就能完成所有操作

## 项目背景
不感兴趣的建议直接略过，这一部分显得很啰嗦繁杂，只是作者的杂谈闲聊，算是我写这个程序的心路历程吧。

本人闲来无事喜欢看剧和追番，但发现要不就得充会员、要不就是被禁，为了白嫖，一开始在盗版网站找资源看。但盗版资源质量参差不齐，大多画质偏低。

这时候注意到了阿里云盘，由于阿里云盘的推广活动，很多用户为了扩容进行了高质量剧集的搬运，并且及时更新，而阿里云支持在线1080P播放，这正是我所需要的。

但很快我发现一个问题，剧集一般一周一更，要想看最新剧集就得每周去链接里保存最新的，这就显得很不人性化。于是我尝试找解决方案，发现其实阿里云盘是存在订阅服务的，分享者更新了文件，用户可以接收通知。

但阿里云在订阅这方面做出了限制，只有特权用户才可以开通订阅功能，普通用户享受不到“分享者更新，订阅者更新”的服务。于是，自己在学习之余做出了这么个程序。初心就是解放双手，完全自动化。

一开始只是自己用，写了并无交互界面的纯脚本版本。但给朋友室友过发现不少人有这方面的需求，但并不是每个人都有python编写的基础。恰好那段时间在看前端bootstrap5的文档，学习简单的网页编写，就诞生了一个念头：把脚本放在网站上，用界面交互降低学习成本。于是雪球越滚越大，原本是想用脚本减轻工作的，结果写这个程序逐级成为更大的工作。

很快我就找到了flask框架这一方向，于是一边学习一边落实项目。可以说，这个项目就是综合我目前掌握的知识用来第一次实战。所以，代码里还保留着初学时残存的屎山，但无妨，算是记录了我的成长经历。

初学者可以拿这个项目当python网页程序学习一下，请酌情取舍，取其精华去其糟粕。

## 项目框架
在本项目里，你可以学习到：
1. flask程序后端工作，包括发送请求，接收请求
2. bootsrtap5的网页案例，各个组件是怎样实例化的，如何排版
3. 前后端的通信，通过jquery传递前后端数据
4. sqlite数据库的增删改查

# 使用

## 在线网站
本人已经搭建了个[在线网站](https://alys.biubush.cn)，各位如想体验可直接使用

## 详细使用

详细使用请查看本人博客文章:[在线文档](https://blog.biubush.cn/archives/alys)

# 部署个人版
## 二进制文件（即开即用）

去[release页面](https://github.com/Biubush/alys/releases)找到适合你内核版本的二进制压缩包，并下载。进入你的文件夹，输入:

```bash
chmod +x alys #给予权限
./alys #启动程序
```

windows版直接下载zip压缩包然后双击运行exe文件即可（server版可能缺少部分dll库，请自行安装解决）

## python脚本（体积更小）

本项目使用到的第三方库：
1. [aligo](https://github.com/foyoux/aligo)，简单、易用、可扩展的阿里云盘 API 接口库
2. [flask](https://github.com/pallets/flask)，python网页程序框架
3. [apscheduler](https://github.com/agronholm/apscheduler)，定时计划库
4. [flask_sqlalchemy](https://github.com/pallets-eco/flask-sqlalchemy)，flask数据库组件

欲在本地运行python脚本，首先保存此仓库：

```bash
git clone https://github.com/Biubush/alys #克隆仓库
cd alys #进入仓库
```

安装第三方模块:

```bash
pip install aligo flask apscheduler flask_sqlalchemy
```

运行程序：

```bash
python3 alys.py
```

# 后记

更不更新都随缘了，主要看多少人用以及用的人是否有这方面的需求。如果你有新的功能点子，可以提issue，我尽力做到。

## To Do List

- [] 用户间的订阅内容分享
- [] 完善的隐私限制
- [] 限制用户任务的具体资源占用
- [] 用户的订阅计划归档分类
- [x] 没有域名情况下的邮件发送署名
- [x] 内置邮件服务器，几乎无需初始化