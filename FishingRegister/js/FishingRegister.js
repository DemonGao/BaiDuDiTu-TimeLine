function addEvent(dom, type, fn) {
	//对于支持DOM2级事件处理程序addeventListener方法的浏览器
	if (dom.addEventListener) {
		dom.addEventListener(type, fn, false);
	} else if (dom.attachEvent) {
		//对于不支持addEventListener方法但支持attchEvent方法的浏览器	
		dom.attachEvent('on' + type, fn);
	} else {
		//对于不支持以上两种,但支持on+'事件名'的浏览器
		dom['on' + type] = fn;
	}
}

var CheckFrom=function(data){
	this.ispass=false;
	this.data=data;
}





CheckFrom.prototype={
	init:function(){
		var That=this;
		addEvent(document.getElementById(That.data.btn),"click",function(){
			var registerForm = document.getElementById("registerForm");
			var name = document.getElementById("name").value;
			var phonenum = document.getElementById("phonenum").value;
			var email = document.getElementById("email").value;
			var idcard = document.getElementById("idcard").value;
			var typeradio = document.getElementsByName("type");
			var ischeck=false;
			var type = "";
			for(var i=0;i<typeradio.length;i++){
				if(typeradio[i].checked){
					ischeck=true;
					type=typeradio[i].value;
				}
			}
			if(!ischeck){
				alert("请选择组队方式!");
				return ;
			}
			if(That.checkRegex(name,"[\u4e00-\u9fa5]{2,4}",{empty:"姓名不能为空!",error:"姓名格式不正确!"})){
				if(That.checkRegex(phonenum,"0?(13|14|15|18|17|16)[0-9]{9}",{empty:"电话不能为空!",error:"电话格式不正确!"})){
					if(That.checkRegex(email,"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$",{empty:"邮箱不能为空!",error:"邮箱格式不正确!"})){
						if(That.checkRegex(idcard,"^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$",{empty:"身份证不能为空!",error:"身份证格式不正确!"})){
							alert("跳转成功");
							var str=[];
							str.push(name);
							str.push(phonenum);
							str.push(email);
							str.push(idcard);
							str.push(type);
							console.log(str);
							document.getElementById('registerForm').submit();
						}
					}
				}
			}
			
			
			
			
			
		});
	},
	checkRegex:function(value,reg,msg){
		if(value==""){
			alert(msg.empty);
			return false;
		}
		var patt1=new RegExp(reg);
		if(!patt1.test(value)){
			alert(msg.error);
			return false;
		}
		return true;
	}
}


var data={
	btn:"btn-register",
	email:"email",
	name:"name",
	phonenum:"phonenum",
	idcard:"idcard"
}
var checkFrom =new CheckFrom(data);

checkFrom.init();
