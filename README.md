# SelectCity 一个简单的城市选择插件

![image](https://github.com/wangmingle/select_city/blob/master/data/eg.png)

## 简介

使用 Rails Engine 给rails 添加一个省级城市选择
使用 html 选择

### 可以自行添加数据

* 省市区: http://www.stats.gov.cn/tjsj/tjbz/xzqhdm/201504/t20150415_712722.html

## 安装

### Gemfile

gem 'select_city'

## 也可以git clone下来修改

gem 'select_city', path: '../select_city/'

### app/assets/javascripts/application.js

//= require 'select_city'

## 使用

html实例代码,可以自定义添加class，但必须包含 :class => 'city-select' 样式

```html
<div class="form-group">
<label class="col-md-3 control-label">省份:</label>
<div class="col-md-9">
<%= f.select(:province,SelectCity.province_list.map{|k, v| [v, k]},{}, {:class => 'form-control city-select', :style => ""})%>
</div>
<div style="clear:both;"></div>
</div>
<div class="form-group">
<label class="col-md-3 control-label">城市/地区:</label>
<div class="col-md-9">
<%= f.select(:city,SelectCity.city_list(@agent.province).map{|k, v| [v, k]}, {}, {:class => 'form-control city-select', :style => ""})%>
</div>
<div style="clear:both;"></div>
</div>
```