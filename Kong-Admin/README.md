# 简介

该项目是做 Kong 的一个 dashboard。 关于 Kong：[点这里](https://getkong.org/) 。

目的：官方并没有实现一个 Dashboard，添加 api 或者添加 oauth plugin 的时候得使用 curl，所以做了个 dashboard 方便点。

虽然 github上 有一些别人的 dashboard 的实现，但是感觉他们不怎么再维护了，自己用的时候感觉也有些 bug，所以想想干脆自己重新造轮子。

# 实现

- 技术：用的是 openResty 也就是 nginx + lua 来实现。
- 原理：其实是个小代理，发请求到 kong 的 api 中，kong 帮我们查找 cassandra 数据库数据。

当时主要是想试试 openResty 这个技术，学学 lua 语言。所以干脆用这个来实现。


# 运行

1. 首先安装好 oepnResty，由于有登录的功能，所以需要安装 Redis，帐号密码自己设置，代码没有做加密。
2. 加入 [lua-resty-http](https://github.com/pintsized/lua-resty-http) 和 [lua-resty-template](https://github.com/bungle/lua-resty-template) 的支持。即把对应的 lua 文件加入到 /openresty/lualib/resty 中即可。
3. 使用 conf 目录下的 nginx.conf ，即跑 nginx 的时候指定该文件。指定好目录，例如： `./nginx -p /Users/yunxin/githubProject/myPro/Kong-Admin -c /Users/yunxin/githubProject/myPro/Kong-Admin/conf/nginx.conf`

跑起来如下图：

![KongAPI1](http://7xrzlm.com1.z0.glb.clouddn.com/kongapi.png?imageMogr2/thumbnail/!25p)

![KongAPI1](http://7xrzlm.com1.z0.glb.clouddn.com/kongapi1.png?imageMogr2/thumbnail/!25p)







