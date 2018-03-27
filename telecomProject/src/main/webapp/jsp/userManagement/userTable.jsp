<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
<script type="text/javascript" src="/telecomProject/static/js/jquery-3.3.1.min.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/telecomProject/static/js/jquery.json-2.4.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/telecomProject/static/easyui/jquery.easyui.min.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/telecomProject/static/js/easyui.demo.js"></script>
<script type="text/javascript"
	src="nee/static/easyui/locale/easyui-lang-zh_CN.js"></script>

<link rel="stylesheet" type="text/css"
	href="/telecomProject/static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="/telecomProject/static/easyui/themes/icon.css">
</head>
<body class="easyui-layout">
	<div id="tb">
		<a id="adduser" href="javascript:void(0)" class="easyui-linkbutton"
     		data-options="iconCls:'icon-add',plain:true">新增</a> 
     		<a id="updateuser"
			href="javascript:void(0)" class="easyui-linkbutton"
	 		data-options="iconCls:'icon-reload',plain:true">修改</a> 
	 		<a id="deleteuser"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove',plain:true">删除</a> 
			<a id="selectuser"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-search',plain:true">查询</a>
			<a id="stopuser"
			href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true">停用</a>
			<a id="liveuser"
			href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-help',plain:true">激活</a>
			<a id="seleteUserById"
			href="/telecomProject/jsp/userManagement/userfindbyId.jsp" class="easyui-linkbutton">查看详细</a>
	</div>
 <table id="tt" class="easyui-datagrid"
           style="width: auto; height: 100%"
           data-options="fitColumns:true,method:'GET',idField:'id',striped:true,singleSelect:false,toolbar:'#tb',pagination:true">
        <thead>
        <tr>
            <th data-options="field:'ck',checkbox:true"></th>
            <th data-options="field:'name',width:50,align:'center',sortable:true">姓名</th>
            <th data-options="field:'ip',width:50,align:'center',sortable:true">账号</th>
             <th data-options="field:'true',width:50,align:'center',sortable:true">身份证</th>
             <th data-options="field:'state',width:50,align:'center',sortable:true">联系电话</th>
             <th data-options="field:'chuzu',width:50,align:'center',sortable:true">邮编</th>
             <th data-options="field:'weihu',width:50,align:'center',sortable:true">QQ信息</th>
             <th data-options="field:'weihu',width:50,align:'center',sortable:true">地址</th>
             <th data-options="field:'weihu',width:50,align:'center',sortable:true">是否有效</th>
           
        </tr>
        </thead>         	
    </table>
      <div id="add_user" class="easyui-dialog" title="添加账号信息" style="width:600px;height:300px;"
         data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true,">
         
		<form id="addusers" method="post">
			<input type="hidden" name="_method" value="put" /> <input
				type="hidden" name="id" id="u_id" /> <input type="hidden"
				name="version" id="u_version" />
				<input type="hidden" name="password" id="u_password" />
         <table style="margin: 0 auto;padding-top: 10px">
                <tr>
                    <td>姓名:</td>
                    <td> <input id="add_userName" class="easyui-textbox" style="width:150px;height:32px"></td>
                	<td>账务账号:</td>
                    <td> <input id="add_loginName" class="easyui-textbox" style="width:150px;height:32px"></td>
               
                </tr>
             
                <tr>
                    <td>密码:</td>
                    <td> <input id="add_loginName" class="password" style="width:150px;height:32px"></td>
                	<tr>
                    <td>联系电话:</td>
                    <td> <input id="add_password" type="easyui-textbox" class="easyui-textbox" style="width:150px;height:32px"></td>
                </tr>

                    <td>身份证号:</td>
                    <td> <input id="add_password2" type="easyui-textbox" class="easyui-textbox" style="width:150px;height:32px"></td>
                	 <td>性别:</td>
                    <td>
                    	 <input type="radio" checked="checked"  name='gender' value="1" >男 
        				<input type="radio" name='gender' value="0" >女  
                    </td>
                </tr>
                
                <tr>
                    <td>邮编:</td>
                    <td> <input id="add_password2" type="easyui-textbox" class="easyui-textbox" style="width:150px;height:32px"></td>
               		<td>QQ:</td>
                    <td> <input id="add_password2" type="easyui-textbox" class="easyui-textbox" style="width:150px;height:32px"></td>
               
                </tr>              
            </table>
	</form>
	    <div style="width: 220px;margin: 0 auto;padding-top: 15px"; id="add_users_dialog_bb">
		<a id="ok" href="Javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" style="width: 60px;height:32px">确定</a>
        <a id="not" href="Javascript:void(0)" class="easyui-linkbutton" iconCls="icon-no" style="width: 60px;height:32px">取消</a>     			
        <a id="not" href="Javascript:void(0)" class="easyui-linkbutton" style="width: 90px;height:32px">文件上传</a>     
			
	     </div>	
	</div>
	
	<div id="update_user" class="easyui-dialog"
		style="width: 400px; height: 250px"
		data-options="title:'修改用户',buttons:'#update_users_dialog_bb',modal:true,
		collapsible:true,minimizable:true,maximizable:true,resizable:true,closable:true,closed:true">

		<form id="update_users" method="post">
			
			<table style="margin: 0 auto;padding-top: 10px">
				<tr>
					<td>密码：</td>
					<td><input class="easyui-textbox" type="text" id="u_userName" 
						name="userName"  style="width:150px;height:32px"/></td>
				</tr>
				<tr>
					<td>邮编：</td>
					<td><input class="easyui-textbox" type="text" id="u_loginName"
						name="loginName"  style="width:150px;height:32px"/></td>
				</tr>
				<tr>
					<td>QQ号：</td>
					<td><input class="easyui-textbox" name="gender" id="u_gender" style="width:150px;height:32px"/>
					</td>
				</tr>
				<tr>
					<td>地址：</td>
					<td><input class="easyui-textbox" name="gender" id="u_gender" style="width:150px;height:32px"/>
					</td>
				</tr>
				
			</table>
		</form>
     <div style="width: 205px;margin: 0 auto;padding-top: 15px";id="update_users_dialog_bb">
		<a id="ok" href="Javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" style="width: 100px;height:32px">确定</a>
        <a id="not" href="Javascript:void(0)" class="easyui-linkbutton" iconCls="icon-no" style="width: 100px;height:32px">取消</a>     			
        </div>
</div>
	
	
<div id="select_user" class="easyui-dialog" title="用户查询" style="width:400px;height:260px;"
         data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true,">
            <table style="margin: 0 auto;padding-top: 10px">
                <tr>
					<td>身份证：</td>
					<td><input class="easyui-textbox" type="text" id="u_userName" 
						name="userName" style="width:150px;height:32px"/></td>
				</tr>
                <tr>
					<td>地址：</td>
					<td><input class="easyui-textbox" type="text" id="u_userName" 
						name="userName"  style="width:150px;height:32px"/></td>
				</tr>
				<tr>
					<td>激活状态：</td>
					<td><select id="cc" class="easyui-combobox" name="dept" style="width:200px;">
                         <option value="aa">无</option>
                                 <option>激活</option>
                                 <option>停用</option>            
						</select>
					</td>
				</tr>
				<tr>
					<td>是否欠费：</td>
					<td><select id="cc" class="easyui-combobox" name="dept" style="width:200px;">
                         <option value="aa">无</option>
                                 <option>已欠费</option>
                                 <option>未欠费</option>            
						</select>
					</td>
				</tr>
            </table>
            <div style="width: 205px;margin: 0 auto;padding-top: 15px">
                <a id="ok" href="Javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" style="width: 100px;height:32px">确定</a>
                <a id="not" href="Javascript:void(0)" class="easyui-linkbutton" iconCls="icon-no" style="width: 100px;height:32px">取消</a>
            </div>
    </div>
    
    
</body>
</html>