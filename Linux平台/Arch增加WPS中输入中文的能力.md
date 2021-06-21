## 增加WPS中输入中文的能力

- 需要针对`wps, et, wpp`等组件分别配置

### 配置文件位置：

```sh
/usr/bin/et
/usr/bin/wpp
/usr/bin/wps
/usr/bin/wpspdf
```

### 配置文件内容：

在**配置文件开头**增加如下代码，

```sh
export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE="fcitx"
```

> 其他工具如LibreOffice（需修改`/usr/bin/libreoffice`）等可以用同样的方式解决。

