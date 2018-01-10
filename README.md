# CourseSelect [![Build Status](https://travis-ci.org/PENGZhaoqing/CourseSelect.svg?branch=master)](https://travis-ci.org/PENGZhaoqing/CourseSelect)

本项目已部署在Cloud9平台上[演示Demo戳这里](http://courseselect2-magezhang.c9users.io)，点击前请联系我们打开服务器
本项目依托于[高级软件工程课程项目](https://github.com/PENGZhaoqing/CourseSelect)进行开发

### 主界面

aaa


## 系统功能

**原有功能**
* 多角色登陆（学生，老师，管理员）
* 学生动态选课，退课
* 老师动态增加，删除课程
* 老师对课程下的学生添加、修改成绩
* 权限控制：老师和学生只能看到自己相关课程信息

**新添功能**
* 课程搜索功能
* 个人课程表 
* 改进教师添加课程的输入
* 课程评估
* Excel表格学生成绩导入与导出
* 统计选课学分
* 处理选课课程冲突

### 功能介绍及截图

#### 课程搜索功能
- 学生添加课程时，可进行课程关键词的搜索，快速找到目标课程

#### 个人课程表
- 学生已选的课程会显示在课程表上方便查看

#### 改进教师添加课程的输入
- 教师用户添加课程时，某些固定字段以单选框方式来添加信息，例如课程属性，可以设置一级学科核心课，专业核心课，专业普及课三个选项供教师选择，防止教师用户的不规范输入

#### 课程评估
- 对于学生用户，可对自己已选课程的老师进行评估
- 对于教师用户，可查看自己开设的课程的学生评分和优缺点评语

#### Excel表格学生成绩导入与导出
- 对于学生用户，可导出已选课程信息Excel
- 对于教师用户，可从系统上导出学生成绩单，或导入已有的excel表格，更新学生成绩

#### 统计选课学分
- 学生在个人课表页面中，显示已修课程学分统计，总共学分要求，还需学分

#### 处理选课课程冲突
- 在可选课程中，下拉详情可直接显示上课时间、上课地点等信息
- 当课程与已选课程时间冲突，则提示课程冲突，并同时列出本时间段已选的冲突课程的详细信息
- 显示课程限选人数及已选人数，若人数已满则不能选此课程
- 课程名单中，显示课程已选人数，可方便控制该课程选课情况




## 说明

目前使用的库和数据库：

* 使用[Bootstrap](http://getbootstrap.com/)作为前端库
* 使用[Rails_admin Gem](https://github.com/sferik/rails_admin)作为后台管理
* 使用[Postgresql](http://postgresapp.com/)作为数据库

使用前需要安装Bundler，Gem，Ruby，Rails等依赖环境。

请根据本地系统下载安装[postgresql](https://devcenter.heroku.com/articles/heroku-postgresql#local-setup)数据库，并运行`psql -h localhost`检查安装情况。


## 安装

在终端（MacOS或Linux）中执行以下代码

```
$ git clone https://github.com/PENGZhaoqing/CourseSelect
$ cd CourseSelect
$ bundle install
$ rake db:migrate
$ rake db:seed
$ rails s 
```

在浏览器中输入`localhost:3000`访问主页

## 使用

1.学生登陆：

账号：`student1@test.com`

密码：`password`

2.老师登陆：

账号：`teacher1@test.com`

密码：`password`


3.管理员登陆：

账号：`admin@test.com`

密码：`password`

账号中数字都可以替换成2,3...等等
