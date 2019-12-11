select "option=(function(){
 var option = {
     backgroundColor:'#323a5e',
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        grid: {
          left: '2%',
          right: '4%',
          bottom: '14%',
          top:'16%',
          containLabel: true
        },
         legend: {
        data: ['1', '2', '3'],
        right: 10,
        top:12,
        textStyle: {
            color: '#fff'
        },
        itemWidth: 12,
        itemHeight: 10,
    },
        xAxis: {
          type: 'category',
          data: [" from dual 
union all         

select 
	concat("'", DATE_FORMAT(create_time,"%Y-%m"), "',")
from order1 
where status > 50
group by DATE_FORMAT(create_time,"%Y-%m") 
union all         
          
select  "],
          axisLine: {
            lineStyle: {
              color: 'white'

            }
          },
          axisLabel: {
            textStyle: {
              fontFamily: 'Microsoft YaHei'
            }
          },
        },

        yAxis: {
          type: 'value',
          max:'120',
          axisLine: {
            show: false,
            lineStyle: {
              color: 'white'
            }
          },
          splitLine: {
            show: true,
            lineStyle: {
              color: 'rgba(255,255,255,0.3)'
            }
          },
          axisLabel: {}
        },
        'dataZoom': [{
          'show': true,
          'height': 12,
          'xAxisIndex': [
            0
          ],
          bottom:'8%',
          'start': 10,
          'end': 90,
          handleIcon: 'path://M306.1,413c0,2.2-1.8,4-4,4h-59.8c-2.2,0-4-1.8-4-4V200.8c0-2.2,1.8-4,4-4h59.8c2.2,0,4,1.8,4,4V413z',
          handleSize: '110%',
          handleStyle:{
            color:'#d3dee5',

          },
          textStyle:{
            color:'#fff'},
          borderColor:'#90979c'
        }, {
          'type': 'inside',
          'show': true,
          'height': 15,
          'start': 1,
          'end': 35
        }],
        series: [{
          name: '1',
          type: 'bar',
          barWidth: '15%',
          itemStyle: {
            normal: {
                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                    offset: 0,
                    color: '#fccb05'
                }, {
                    offset: 1,
                    color: '#f5804d'
                }]),
                barBorderRadius: 12,
            },
          },
          data: [" from dual
union all
select 
 #DATE_FORMAT(create_time,'%Y-%m'),
 concat(count(*),",")
from order1 
where status=70
group by DATE_FORMAT(create_time,'%Y-%m')
union all          

select "           ]
        },
        {
          name: '2',
          type: 'bar',
          barWidth: '15%',
          itemStyle: {
            normal: {
                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                    offset: 0,
                    color: '#8bd46e'
                }, {
                    offset: 1,
                    color: '#09bcb7'
                }]),
                barBorderRadius: 11,
            }
            
          },
          data: [40, 40, 30, 30, 30, 40, 40, 40, 30]
        },
        {
          name: '3',
          type: 'bar',
          barWidth: '15%',
          itemStyle: {
            normal: {
                color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                    offset: 0,
                    color: '#248ff7'
                }, {
                    offset: 1,
                    color: '#6851f1'
                }]),
            barBorderRadius: 11,
            }
          },
          data: [40, 60, 70, 70, 100, 40, 40, 60, 70]
        }]
      };

      var app = {
        currentIndex: -1,
      };
      setInterval(function () {
        var dataLen = option.series[0].data.length;

        myChart.dispatchAction({
          type: 'downplay',
          seriesIndex: 0,
          dataIndex: app.currentIndex
        });
        app.currentIndex = (app.currentIndex + 1) % dataLen;
        myChart.dispatchAction({
          type: 'highlight',
          seriesIndex: 0,
          dataIndex: app.currentIndex,
        });
        myChart.dispatchAction({
          type: 'showTip',
          seriesIndex: 0,
          dataIndex: app.currentIndex
        });
      }, 1000);
return option;
})();" from dual
