<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta charset="utf-8">
<link href="https://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../../static/jquery-easyui-1.4.4/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="../../static/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../static/uploadify/uploadify.css">
<style type="text/css">
.required {
	background-color: #CCCCFF !important;
}

.dataError {
	text-decoration: underline;
	color: red !important;
}

#mainPicUl {
	list-style: none;
	margin: 0px;
	padding: 0px;
}

#mainPicUl li {
	width: 150px;
	float: left;
}

#mainPicUl img {
	height: 120px;
	width: 120px;
	margin: 5px 5px 5px 0px;
}

.moveDiv {
	text-align: center;
	width: 130px;
	height: 25px;
}

.moveDiv i:HOVER {
	
}

.moveDiv i {
	cursor: pointer;
}
</style>
</head>
<body style="padding: 10px;">
	<form>
		<fieldset>
			<legend>创建新的融资标的</legend>

			<table>
				<tr>
					<td><label>新手标</label> <select id="newInvestor" style="width: 80px;" id="type">
							<option value="false">否</option>
							<option value="true">是</option>
					</select></td>
					<td><label>类型</label> <select style="width: 80px;" id="type">
							<option value="CPB">存票宝</option>
							<option value="SCB">随存宝</option>
						</select></td>
					<td><label>标的名称</label> <input id="targetName" type="text" placeholder="" class="required"></td>
					<td><label>编号</label> <input id="code" type="text" style="width: 80px;"></td>
					<td><label>融资金额</label> <input id="collectAmount" type="text" placeholder="自动计算" style="width: 100px;" class="required"></td>
					<td><label>理财期限(天)</label> <input id="period" type="text" placeholder="" style="width: 100px;" class="required"></td>
					<td><label>年化利率(%)</label> <input id="annualizedRates" type="text" style="width: 70px;" class="required"></td>
					<td><label>加息(%)</label> <input id="incrRate"  type="text" style="width: 50px;background-color: yellow !important;" class="required" title="如果以标题的形式显示加息额度，就填写0"></td>

				</tr>

			</table>

			<table>
				<tr>
					<td><label>起投金额</label> <input id="minAmount" value="1000" type="text" placeholder="" style="width: 100px;" class="required"></td>
					<td><label>每人限购</label> <input id="limitAmount" value="50000" type="text" placeholder="" style="width: 100px;" class="required"></td>

					<td><label>计息方式</label> <select id="interestWay" style="width: 100px;">
							<option value="t1">每日计息</option>
						</select></td>
					<td style="padding-bottom: 10px;"><label>开始时间</label><input id="beginDate" class="easyui-datetimebox" style="width: 150px; height: 30px;"></td>
					<td style="padding-bottom: 10px;"><label>结束时间</label><input id="endDate" class="easyui-datetimebox" style="width: 150px; height: 30px;"></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>
						<label>标签</label>
						<select id="targetMark" style="width: 100px;">
							<option value=""></option>
							<option value="hot">HOT</option>
<!-- 							<option value="newcommer">新手计划</option> -->
							<option value="activity">活动</option>
						</select>
					</td>
					<td>
						<label>城市地址</label>
						<input id="cityAddress" type="text" placeholder="如：浙江 杭州，浙江 温州">
					</td>
				</tr>
			</table>
			<label>承诺兑付说明</label>
			<div>
				<input id="cashMark" type="text" placeholder="" style="width: 400px;">
			</div>
			<label>质押物照片</label>
			<div style="width: 80%;">
				<ul id="mainPicUl">
					<li><img class="img-polaroid" src="../../static/imgs/no_img.png" />
						<div class="moveDiv">
							<i class="icon-remove" title="删除图片"></i><i class="icon-circle-arrow-right" title="右移图片"></i>
						</div></li>
					<li><img class="img-polaroid" src="../../static/imgs/no_img.png" />
						<div class="moveDiv">
							<i class="icon-circle-arrow-left" title="左移图片"></i><i class="icon-remove" title="删除图片"></i> <i class="icon-circle-arrow-right" title="右移图片"></i>
						</div></li>
					<li><img class="img-polaroid" src="../../static/imgs/no_img.png" />
						<div class="moveDiv">
							<i class="icon-circle-arrow-left" title="左移图片"></i><i class="icon-remove" title="删除图片"></i> <i class="icon-circle-arrow-right" title="右移图片"></i>
						</div></li>
					<li><img class="img-polaroid" src="../../static/imgs/no_img.png" />
						<div class="moveDiv">
							<i class="icon-circle-arrow-left" title="左移图片"></i><i class="icon-remove" title="删除图片"></i> <i class="icon-circle-arrow-right" title="右移图片"></i>
						</div></li>
					<li><img class="img-polaroid" src="../../static/imgs/no_img.png" />
						<div class="moveDiv">
							<i class="icon-circle-arrow-left" title="左移图片"></i><i class="icon-remove" title="删除图片"></i>
						</div></li>
				</ul>
			</div>
			<div style="clear: both;">
				<form>
					<div id="queue"></div>
					<input id="file_upload" name="file_upload" type="file" multiple="true" />
				</form>
			</div>
			<div style="clear: both;">
				<table>
					<tr>
						<td><label>承兑银行</label> <input id="draftBank" type="text" placeholder="" style="width: 300px;"></td>
						<td><label>票面金额</label> <input id="draftAmount" type="text" placeholder="" style="width: 100px;"></td>
						<td><label>票号</label> <input id="draftNo" type="text" placeholder="" style="width: 100px;"></td>

					</tr>
				</table>
			</div>
			<label>项目描述</label>
			<div id="editor"></div>




			<div style="margin-top: 10px;">
				<button id="btnCreate" type="button" class="btn btn-primary">创建</button>
			</div>
		</fieldset>
	</form>

	<script src="../../static/jquery-1.11.0.js"></script>
	<script src="../../static/bootstrap2/js/bootstrap.min.js"></script>
	<script src="../../static/ckeditor-4.5.4/ckeditor.js"></script>
	<script type="text/javascript" src="../../static/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../../static/jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
	<script src="../../static/uploadify/jquery.uploadify.min.js" type="text/javascript"></script>

	<script src="financing_target_create.js"></script>
</body>
</html>