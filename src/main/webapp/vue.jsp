<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="js/vue.js"></script>
<script src="js/vue-resource.js"></script>
<style>
    .gray{
        background: #ccc;
    }
</style>
<body>
    <div>
        <input type="text" v-model="key" @keyup="query($event)" @keydown.down="changeDown()" @keydown.up.prevent="changeUp()">
        <ul>{{index}}
            <li v-for="value in myData"  :class="{gray:$index==index}">
                {{value}}
            </li>
        </ul>
         <p v-show="myData.length==0">暂无数据</p>
        {{myData}}
    </div>
</body>
<script>
    window.onload=function(){
        new Vue({
            el:'body',
            data:{
                myData:[],
                key:"",
                index:-1
            },
            methods:{
                query:function(event){
                    if(event.keyCode==38 || event.keyCode==40)return;
                    this.$http.jsonp('https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su',
                        {wd:this.key},{jsonp:'cb'}
                    ).then(function(result){
                            this.myData=result.data.s;

                            },
                        function(result){alert("查询出错")});

                },
                changeDown:function(){

                    this.index++;
                    if(this.index==this.myData.length)this.index=-1;
                    this.key=this.myData[this.index];
                },
                changeUp:function(){
                    this.index--;
                    if(this.index==-2)this.index=this.myData.length-1;
                    this.key=this.myData[this.index];
                }
            }
        })
    }

</script>
</html>
