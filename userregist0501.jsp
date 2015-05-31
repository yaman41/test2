<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*;"%>
<%
	boolean status = true; // ログインステータス
	int menustatus = 3; // メニューバーステータス
	String username = null;//"univ"; // ユーザー名
	ArrayList<String> dto = new ArrayList<String>();
	dto.add("aaa");
	dto.add("bbb");
	dto.add("ccc");
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sample jsp</title>
<link rel="stylesheet" href="./css/style.css" type="text/css">
<style>
/***************************
	-- コンテンツ部分 --
****************************/
#message {
}

#userregist{
	width:700px;
	margin:0 auto;
}

table{
	text-align:left;
}




</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<!-- タイトル部分 ３パターン用意 -->
			<div id="title">
				<img src="./img/logo.png" width="200" height="50"
					style="float: left;">
				<%
					// ログインしているかどうかによってログインボタンを変更
					if (status == true) {
						out.print("<a href = '#'><div id = 'logoutbutton' class='statusbutton'>Logout</div></a>");
					} else {
						out.print("<a href = '#'><div id = 'logintbutton' class='statusbutton'>Login</div></a>");
					}
				%>
				<%
					// ログインしているかどうかによってログイン名を変更
					if (username != null) {
						out.print("<span id = 'status'>ようこそ" + username + "さん</span>");
					} else {
						out.print("<span id = 'status'>ようこそゲストさん</span>");
					}
				%>

			</div>

			<div id="menu">
				<ul>
					<%
					if (menustatus == 1) {
						// ログインしている状態のメニューバー
						out.print("<a href='#'><li>カテゴリ一覧</li></a>");
						out.print("<a href='#'><li>注文一覧</li></a>");
						out.print("<a href='#'><li>カート</li></a>");
						out.print("<a href='#'><li>ユーザ情報表示</li></a>");
					} else if (menustatus == 2) {
						// ログインしていない状態のメニューバー
						out.print("<a href='#'><li>カテゴリ一覧</li></a>");
						out.print("<a href='#'><li>新規登録</li></a>");
					} else if(menustatus == 3) {
						//
						out.print("<a href='#'><li>カテゴリ一覧</li></a>");
					}else{
						// 何も表示しない
					}
					%>
				</ul>
			</div>
		</div>
		<div id="content">
			<!-- メイン部分 -->
			<h3>■ ユーザ登録</h3>

			<div id="userregist">
			<p id="message">下記の項目を入力して下さい。　<span style="color:red;">*</span>は必須項目</p>
				<form action="#" method="POST">
				<table>
					<tr>
						<th><span style="color:red;">*</span>氏名</th><td>氏 <input type="text" name="#">　名 <input type="text" name="#"></td>
					</tr>
					<tr>
						<th><span style="color:red;">*</span>フリガナ</th><td>氏 <input type="text" name="#">　名 <input type="text" name="#"></td>
					</tr>
					<tr>
						<th><span style="color:red;">*</span>電話番号</th><td><input type="text" name="#" style="width:100px;">-<input type="text" name="#" style="width:100px;">-<input type="text" name="#" style="width:100px;"></td>
					</tr>
					<tr>
						<th><span style="color:red;">*</span>E-mail</th><td><input type="text" name="#"></td>
					</tr>
					<tr>
						<th><span style="color:red;">*</span>E-mail(確認)</th><td><input type="text" name="#"></td>
					</tr>
					<tr>
						<th><span style="color:red;">*</span>パスワード(4～15桁)</th><td><input type="text" name="#"></td>
					</tr>
					<tr>
						<th><span style="color:red;">*</span>パスワード(確認)</th><td><input type="text" name="#"></td>
					</tr>
				</table>
				<div style = "float:right;">
				<input type="reset" value="クリア" class="button">
				<input type="submit" value="登録" class="button">
				</div>
				</form>
			</div>
			<br style="clear: both;">
		</div>
		<div id="footer">
			<!-- 最下部 -->
			<p></p>
			<p></p>
			<p>Copyright &copy; 2015 univcompany All Rights Reserved.</p>
		</div>
	</div>

	<!--
	<h1>Sample jsp page</h1>
	<p>これはサンプルで用意したページです。</p>
	<p><%=java.util.Calendar.getInstance().getTime()%></p>
	-->
</body>
</html>