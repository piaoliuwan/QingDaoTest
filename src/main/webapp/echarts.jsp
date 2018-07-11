<html>
<head lang="en">
    <meta charset="utf-8">
    <title>ECharts</title>
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="height:400px;width: 600px"></div>
<!-- ECharts单文件引入 -->
<%--<script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>--%>
<script src = "js/echarts.min.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts图表
    var myChart = echarts.init(document.getElementById("main"));
    var option = {

        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['流量'],
            textStyle:{    //图例文字的样式
                color:'white',
                fontSize:12
            }
        },
        calculable : true,
        xAxis : [
            {
                type : '+',
                boundaryGap : false,
                data : ["00:01","00:02","00:03","00:04","00:05","00:06","00:07","00:08","00:09"],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:'16'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1,   //这里是坐标轴的宽度,可以去掉
                    }
                }
            }
        ],
        yAxis : [
            {

                type : 'value',
                name:name,
                axisLabel: {
                    formatter: '{value}',
                    show: true,
                    textStyle: {
                        color: '#fff',
                        fontSize:'16'
                    }
                },
                axisLine:{
                    lineStyle:{
                        color:'#fff',
                        width:1,                  //这里是坐标轴的宽度
                    }
                }
            }
        ],
        series : [
            {
                name:'a',
                type:'line',
                data:[11, 11, 15, 13, 12, 13, 10,11,12],
                markLine : {
                    data : [
                        {yAxis:"10", name : '平均值'}
                    ]
                }
            },
         /*{
                name:'b',
                type:'line',
                data:[1, -2, 2, 5, 3, 2, 0],

                markLine : {
                    data : [
                        {yAxis:"1", name : '平均值'}
                    ]
                }
            }*/
        ]
    };

    // 为echarts对象加载数据
    myChart.setOption(option);

</script>
</body>
</html>