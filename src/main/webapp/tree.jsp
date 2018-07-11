<%--
  Created by IntelliJ IDEA.
  User: dell  gao
  Date: 2018/4/2
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .tree {margin: 0;padding: 0;background-color:#f2f2f2;overflow: hidden;}
        /*隐藏input*/
        .tree li input{position: absolute;left: 0;opacity: 0;z-index: 2;cursor: pointer;height: 1em;width:1em;top: 0;}
        /*所有菜单项设置统一样式*/
        .tree li {position: relative;list-style: none;}
        /*一级菜单加下边线*/
        .tree>li{border-bottom: 1px solid #d9d9d9;}
        /*给有子菜单的菜单项添加背景图标*/
        .tree li label {max-width:999px;cursor: pointer;display: block;margin:0 0 0 -50px;padding: 15px 10px 15px 70px;background-position:95% 50%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis; }
        .tree li label:hover,li label:focus{background-color:#a7a7a7;color:#fff;}
        /*清除所有展开的子菜单的display*/
        .tree li input + ol{display: none;}
        /*当input被选中时，给所有展开的子菜单设置样式*/
        .tree input:checked + ol {padding-left:14px;height: auto;display: block;}
        .tree input:checked + ol > li { height: auto;}
        /*末层菜单为A标签，设置样式*/
        .tree li.file a{margin:0 -10px 0 -50px;padding: 15px 20px 15px 70px;text-decoration:none;display: block;color:#333333;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;}
        .tree li.file a:hover,li.file a:focus{background-color:#a7a7a7;color:#fff;}
        /*不同层级的菜单字体大小不同*/
        .tree .folderOne{font-size: 18px;}
        .tree .folderTwo{font-size:16px;}
        .tree .folderThree{font-size:14px;}
    </style>
</head>
<body>
<ol class="tree" style="height:200px;overflow: auto; ">
    <li>
        <label for="folder1" class="folderOne">月</label> <input type="checkbox" id="folder1" />
        <ol>
            <li>
                <label for="subfolder1"class="folderTwo">日</label> <input type="checkbox" id="subfolder1"  />
                <ol>
                    <li class="file folderThree"><a href="#">设备1</a></li>
                    <li class="file folderThree"><a href="#">设备2…</a></li>
                    <li class="file folderThree"><a href="#">设备3</a></li>
                </ol>
            </li>
            <li class="file folderTwo"><a href="#">日2</a></li>
            <li class="file folderTwo"><a href="#">日3</a></li>
            <li class="file folderTwo"><a href="#">日4</a></li>
            <li class="file folderTwo"><a href="#">日5</a></li>
        </ol>

    </li>
    <li>
        <label for="folder2" class="folderOne" >ZCMS</label> <input type="checkbox" id="folder2" />
        <ol>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
            <li>
                <label for="subfolder2" class="folderTwo">实时数据</label> <input type="checkbox" id="subfolder2"  />
                <ol>
                    <li class="file folderThree"><a href="#">实时数据</a></li>
                    <li class="file folderThree"><a href="#">实时数据</a></li>
                    <li class="file folderThree"><a href="#">实时数据</a></li>
                </ol>
            </li>
        </ol>
    </li>
    <li>
        <label for="folder3"  class="folderOne">ZAS</label> <input type="checkbox" id="folder3" />
        <ol>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
        </ol>
    </li>
    <li>
        <label for="folder4"  class="folderOne">ZHTML标签</label> <input type="checkbox" id="folder4"/>
        <ol>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
        </ol>
    </li>
    <li>
        <label for="folder5"  class="folderOne">UI框架API手册</label> <input type="checkbox" id="folder5"/>
        <ol>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
            <li class="file folderTwo"><a href="#">实时数据</a></li>
        </ol>
    </li>
</ol>
</body>
</html>
