# SublimeText3编辑器-ZHXI

1. 安装包管理组件（Tools-InstallPackageControl）
2. 打开包管理工具（Project-PackageControl)
3. 选择要安装的包：
   - Kite，与Kite工具配合基于人工智能推荐代码；
   - ChineseLocalizations，中文化；
   - MarkdownLivePreview，MD实时渲染；
   - Theme-Spacegray，类Atom主题；
4. 编译工具（Tools-编译系统-Python/新建编译系统）
   - Python语言，使用默认的Python编译系统即可，在系统内配置好默认Python调用Conda内部配置好的Python（包含三方库）。
   - 其他语言，需要从系统中选择适当的编译工具。
5. IDE菜单栏隐藏/显示：
   - 视图菜单内只能隐藏菜单栏
   - 命令方式空值：
     - CTRL+ SHIFT+P调出命令面板，选择view: toggle menu，可隐藏/显示菜单栏
   - 热键定义：
     - 按CTRL+ SHIFT+P
     - 搜索`key bindings user`
     - 选择 `Preferences: Key Bindings - User`
     - 打开`Default (Linux).sublime-keymap`文件。添加此行（整个文件只有一个{}）：`{"keys": ["ctrl+alt+m"], "command": "toggle_menu"}`
     - Sublime会自动重新加载热键绑定，之后可使用CTRL+ ALT+ M热键来切换菜单栏。

6. 设置字体字号并显示编码
```json
{
	"ignored_packages":
	[
		"Vintage",
	],
	"theme": "Spacegray Oceanic.sublime-theme",     // 安装Spacegray主题并设置才有
	"color_scheme": "Mariana.sublime-color-scheme",
	"font_face": "Consolas",   // 字体
	"font_size": 10,           // 字号
	"show_encoding": true,     // 在状态栏显示编码
}
```

7. 版本4与之前配置不兼容，无法正确调用系统Python（默认使用py命令），需要借助PackageResourceViewer工具配置已有（默认）编译系统
    - a. 安装
    - Ctrl+Shift+P - 包管理:安装包
    - 搜索`PackageResourceViewer`安装
    - b. 配置
    - Ctrl+Shift+P - 搜索`PackageResourceViewer`部分关键字 - 选择“打开资源” - 选择Python（即默认的Python编译系统）
    - 修改`cmd`部分命令

