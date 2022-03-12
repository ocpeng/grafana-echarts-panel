# 亮点：grafana直接调取echarts图形，支持SQL
* grafana版本 v6.2.5
* 20191211修复加载问题
* 如能帮助到您，欢迎给与支持，谢谢
* 对https://github.com/soWill666/grafana-echarts-panel进行二次开发

# 1. 安装
直接将插件复制到grafana目录下，默认目录为/var/lib/grafana/plugins/

# 2. 重启grafana
service grafana restart

# 3. 直接调取echarts js代码静态数据展示
* echars源地址：https://gallery.echartsjs.com/editor.html?c=xdExzKlpOh
* 使用方法腾讯课堂-搜：grafana运维监控与数据分析
* 或者，网易云课堂-搜：grafana运维监控与数据分析
* 最后将这些代码放入Echarts Option中，详见demo
![Image text](https://github.com/ocpeng/grafana-echarts-panel/blob/master/demo/01.png)

# 4. 编写SQL动态数据展示
* echars源地址：https://gallery.echartsjs.com/editor.html?c=xG3rZAFEqu
* 使用方法腾讯课堂-搜：grafana运维监控与数据分析
* 或者，网易云课堂-搜：grafana运维监控与数据分析

