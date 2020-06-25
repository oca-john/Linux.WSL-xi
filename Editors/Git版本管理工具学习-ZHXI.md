# Git版本管理工具学习-ZHXI

## 1. 开头总结

|命令|解释|
|----|----|
|git config	|配置相关信息|  
|git clone	|复制仓库|  
|git init	|初始化仓库|  
|git add  |添加更新内容到索引中|  
|git diff	|比较内容|  
|git status	|获取当前项目状况|  
|git commit	|提交|  
|git branch	|分支相关|  
|git checkout	|切换分支|  
|git merge	|合并分支|  
|git reset	|恢复版本|  
|git log  |查看日志|  

- 高亮颜色定义`<font color=DeepSkyBlue>zhelishilanse</font>`

## 2. 在全局配置Git的作者信息

- `git config --global user.name "nameofuser"` : 修改作者姓名  
- `git config --global user.email "emailofuser"` : 修改作者邮箱  
- `--global`配置的内容存放于用户目录，全局生效；无全局标签则放在当前目录  

## 3. 克隆或初始化一个仓库

> `git clone url-adress` : 克隆远程仓库到本地  
> `mkdir code-dir && git init` : 创建新目录，并初始化仓库  

## 4. 创建文件-加入缓存区-提交修改

> `touch file1` : 创建文件  
> `git add file1 (git add .)` : 加入缓存区  
> `git commit -m "remark content here"` : 提交修改到本地仓库  

## 5. 分支操作

> `git branch newbranch` : 新建分支  
> `git branch -d newbranch` : 删除(已被合并的)新建分支  
> `git branch -D newbranch` : 删除新建分支(强制)  
> `git branch` : 查看所有分支状态  
> `git checkout newbranch` : 切换到新建分支  
> `git checkout master && git merge -m "merge newbranch branch" newbranch` : 切到主分支，合并新建分支  
> `git diff` : 查看最近的修改与上一个提交版本间的差异  
`<!-- 如果主次分支修改了一个文件，提交时会冲突。先在主分支修改并提交，切到次分支修改并提交，切到主分支进行合并。-->`  
> `git reset --hard HEAD^` : 撤销一次合并  

## 6. 查看Git日志

> `git log` : 逐步显示Git log记录  
> `git log --stat` : 日志统计，显示那些文件修改了多少行内容  
> `git log --graph` : 可视化提交图  

