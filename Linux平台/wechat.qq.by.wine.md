# Wechat and QQ by Wine_6

- 新版本的 Wine 6 已经能够较好支持 WeChat 和 QQ 等 Windows 应用
- 依然存在 Wine 的相关遗留问题（如，中文字体、输入框不能选中、输入内容不显示）

## 主要安装/配置过程

### 1. 安装 Wine 6

使用 openSUSE 的 zypper 安装官方仓库的 Wine 最新版即可。

### 2. 配置 Wine 相关依赖库（原生/内建）

- 增加 msls31 库，用于微信文本框内容显示
- 增加 riched20 库，用于 QQ 等登录框选中和内容捕获
- 增加 riched32 库
- 增加 msvcp60 库（可选）

### 3. 安装最新版本 WeChat 或 QQ / TIM

- 下载最新版微信，使用 Wine 打开安装到默认位置（C盘）即可，目前对微信内建浏览器支持不好，容易崩溃，建议修改为使用默认浏览器打开网页（如公众号文章）
- 下载最新版本 QQ 安装即可，可正常运行和聊天，但程序运行和响应过程太慢(TIM 同)，故仍推荐简陋的 Linux 原生版本
- 对腾讯会议的支持不佳，初始化和网络连接需要几分钟，可以创建会议（未测试加入会议），视频设备无法调用，屏幕共享会崩溃
